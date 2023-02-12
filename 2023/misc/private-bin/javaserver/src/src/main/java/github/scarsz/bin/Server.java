package github.scarsz.bin;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import github.scarsz.bin.exception.BinNotFoundException;
import github.scarsz.bin.route.GetBinRoute;
import github.scarsz.bin.route.IndexRoute;
import github.scarsz.bin.route.api.v1.ApiV1GetBinRoute;
import github.scarsz.bin.route.api.v1.ApiV1PostRoute;
import github.scarsz.configuralize.DynamicConfig;
import github.scarsz.configuralize.Language;
import github.scarsz.configuralize.ParseException;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.lang3.ArrayUtils;
import org.jline.reader.EndOfFileException;
import org.jline.reader.LineReader;
import org.jline.reader.LineReaderBuilder;
import org.jline.reader.UserInterruptException;
import spark.ModelAndView;
import spark.template.velocity.VelocityTemplateEngine;

import java.io.File;
import java.io.IOException;
import java.lang.management.ManagementFactory;
import java.sql.*;
import java.util.*;
import java.util.concurrent.TimeUnit;

import static spark.Spark.*;

public class Server {

    public static String version = Server.class.getPackage().getImplementationVersion();
    static { if (version == null) version = "DEV"; }
    private static Server instance;

    private final DynamicConfig config;
    private final Connection connection;
    private final Gson gson = new GsonBuilder().disableHtmlEscaping().create();
    private final Gson gsonPretty = new GsonBuilder().disableHtmlEscaping().setPrettyPrinting().create();
    private final Thread shutdownHook;
    private LineReader console;
    private ExpirationThread expirationThread;

    public Server() throws SQLException, IOException, ParseException {
        instance = this;
        config = new DynamicConfig(Language.EN);
        config.addSource(Server.class, "config", new File("config.yml"));
        config.saveAllDefaults();
        config.loadAll();
        connection = DriverManager.getConnection("jdbc:h2:" + new File("bin").getAbsolutePath());

        connection.prepareStatement("create table if not exists bins (" +
                "    id uuid default random_uuid() not null," +
                "    hits int default 0 not null," +
                "    time bigint default DATEDIFF('SECOND', DATE '1970-01-01', CURRENT_TIMESTAMP()) * 1000 not null," +
                "    expiration bigint default null," +
                "    description blob default null," +
                "    constraint bins_pk primary key (id)" +
                ")").executeUpdate();
        connection.prepareStatement("alter table bins add column if not exists lastAccess bigint " +
                "    default DATEDIFF('SECOND', DATE '1970-01-01', CURRENT_TIMESTAMP()) * 1000 " +
                "    not null after expiration").executeUpdate();
        connection.prepareStatement("create table if not exists files (" +
                "    id uuid default random_uuid() not null," +
                "    bin uuid not null," +
                "    type blob default null," +
                "    name blob not null," +
                "    description blob default null," +
                "    content blob not null," +
                "    constraint files_pk primary key (id)" +
                ")").executeUpdate();

        Bin.setCache(config.getInt("Cache"), 1, TimeUnit.DAYS);

        expirationThread = new ExpirationThread();
        expirationThread.start();

        Runtime.getRuntime().addShutdownHook(shutdownHook = new Thread(this::shutdown));

        staticFileLocation("/static/");
        ipAddress(config.getString("Bind.IP"));
        port(config.getInt("Bind.Port"));
        after((request, response) -> response.header("Content-Encoding", "gzip"));

        // logging
        afterAfter((request, response) -> {
            String ip = StringUtils.isNotBlank(request.headers("CF-Connecting-IP"))
                    ? request.headers("CF-Connecting-IP")
                    : StringUtils.isNotBlank(request.headers("X-Forwarded-For"))
                            ? request.headers("X-Forwarded-For")
                            : request.ip();
            String method = request.requestMethod();
            String location = request.url() + (StringUtils.isNotBlank(request.queryString()) ? "?" + request.queryString() : "");
            //if (location.contains(".")) return;
            log(ip + ":" + request.raw().getRemotePort() + " " + method + " " + location + " -> " + response.status());
        });

        get("/", new IndexRoute());
        get("/:id", new GetBinRoute());
        before("/api/*", (request, response) -> {
            // default to API v1 routes when the client wants latest promoted version
            response.redirect(request.pathInfo().replace("/api/", "/v1/"));
            halt(302);
        });
        path("/v1", () -> {
            get("/:id", new ApiV1GetBinRoute());
            post("/post", new ApiV1PostRoute());
        });
        notFound((request, response) -> {
            response.status(404);
            response.type("text/html");
            Map<String, Object> model = new HashMap<>();
            model.put("request", request);
            return render(model, "templates/notfound.vm");
        });
        exception(BinNotFoundException.class, (exception, request, response) -> {
            response.status(404);
            response.type("text/html");
            Map<String, Object> model = new HashMap<>();
            model.put("request", request);
            response.body(render(model, "templates/notfound.vm"));
        });
        exception(Exception.class, (exception, request, response) -> {
            switch (exception.getClass().getSimpleName()) {
                case "IllegalArgumentException":
                case "JsonSyntaxException":
                case "NotImplementedException": response.status(400); break;
                default: response.status(500); {
                    exception.printStackTrace();
                    break;
                }
            }

            Map<String, Object> error = new HashMap<>();
            error.put("type", exception.getClass().getSimpleName());
            error.put("message", exception.getMessage());

            Map<String, Object> payload = new HashMap<>();
            payload.put("status", "error");
            payload.put("error", error);
            response.body(gsonPretty.toJson(payload));
        });

        readConsole();
    }

    private void shutdown() {
        expirationThread.interrupt();

        try {
            synchronized (connection) {
                connection.setAutoCommit(true);
                connection.close();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        System.exit(0);
    }

    private void readConsole() {
        console = LineReaderBuilder.builder().appName("Bin").build();
        while (true) {
            String line;
            try {
                line = console.readLine("bin> ");
            } catch (UserInterruptException e) {
                shutdown();
                return;
            } catch (EndOfFileException e) {
                return;
            }

            String[] split = line.split(" ", 2);
            String command = split[0].toLowerCase();
            String[] args = split.length > 1 ? ArrayUtils.subarray(split, 1, split.length) : new String[0];
            String argsJoined = split.length == 2 ? split[1] : "";

            try {
                command:
                switch (command) {
                    case "exit":
                    case "close":
                    case "stop":
                    case "quit":
                    case "end":
                        Runtime.getRuntime().removeShutdownHook(shutdownHook);
                        shutdown();
                        return;
                    case "echo":
                        log(String.join(" ", args));
                        break;
                    case "top": {
                        int amount = args.length >= 1 ? Integer.parseInt(args[0]) : 25;
                        ResultSet result = connection.createStatement().executeQuery("select id, hits from bins order by hits desc limit " + amount);
                        if (result.isBeforeFirst()) {
                            while (result.next()) {
                                UUID id = (UUID) result.getObject("id");
                                int hits = result.getInt("hits");
                                log("Bin " + id + " has " + hits + " hits");
                            }
                        } else {
                            log("No bins in database");
                        }
                        break;
                    }
                    case "sql":
                    case "sqlf": {
                        boolean full = command.equals("sqlf");
                        Statement statement = connection.createStatement();
                        if (statement.execute(argsJoined)) {
                            ResultSet result = statement.getResultSet();
                            ResultSetMetaData meta = result.getMetaData();
                            int columns = meta.getColumnCount();
                            int row;
                            while (result.next()) {
                                row = result.getRow();
                                if (row > 100 && !full) {
                                    log("<more results, limit or use sqlf to show all>");
                                    break;
                                }

                                StringBuilder builder = new StringBuilder();
                                for (int i = 1; i <= columns; i++) {
                                    if (i > 1) builder.append(" | ");
                                    String columnValue = result.getString(i);
                                    builder.append(meta.getColumnName(i))
                                            .append("=")
                                            .append(columnValue);
                                }
                                log(builder.toString());
                            }
                        }
                        break;
                    }
                    case "rm":
                    case "del":
                    case "delete": {
                        Set<UUID> targets = new HashSet<>();
                        Arrays.stream(args).map(UUID::fromString).forEach(targets::add);
                        while (targets.size() == 0) {
                            try {
                                Arrays.stream(console.readLine("bins(s) to delete> ").split("[, ]"))
                                        .filter(StringUtils::isNotBlank)
                                        .filter(string -> {
                                            try {
                                                UUID.fromString(string);
                                                return true;
                                            } catch (Exception e) {
                                                return false;
                                            }
                                        })
                                        .map(UUID::fromString)
                                        .forEach(targets::add);
                            } catch (UserInterruptException | EndOfFileException e) {
                                break command;
                            }
                        }
                        for (UUID target : targets) {
                            PreparedStatement s = connection.prepareStatement("delete from bins where id = ?");
                            s.setObject(1, target);
                            int rows = s.executeUpdate();
                            log("Deleting " + target + " -> " + (rows > 0 ? "success" : "fail"));
                        }
                        break;
                    }
                    default:
                        log("Unknown command");
                        break;
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }

    public static String render(Map<String, Object> model, String templatePath) {
        return new VelocityTemplateEngine().render(new ModelAndView(model, templatePath));
    }

    public static void log(Object message) {
        getInstance().console.printAbove(message.toString());
    }

    public static Server getInstance() {
        return instance;
    }
    public static long getUptime() {
        return ManagementFactory.getRuntimeMXBean().getUptime();
    }
    public static Connection getConnection() {
        return getInstance().connection;
    }
    public static DynamicConfig getConfig() {
        return getInstance().config;
    }
    public static Gson getGson() {
        return getInstance().gson;
    }
    public static Gson getGsonPretty() {
        return getInstance().gsonPretty;
    }
    public static long getDefaultExpiration() {
        String string = getInstance().config.getString("Expiration.Default");
        return parseTime(string, "30 days");
    }
    public static long getMaximumExpiration() {
        String string = getInstance().config.getString("Expiration.Maximum");
        return parseTime(string, "1 year");
    }

    private static long parseTime(String string, String defaultTime) {
        boolean negative = false;
        if (string.contains("-")) {
            negative = true;
            string = string.replace("-", "");
        }

        long number;
        try {
            if (StringUtils.isNumeric(string)) {
                number = Long.parseLong(string);
                return negative ? -number : number;
            } else {
                String[] parts = string.split(" ");
                if (parts.length % 2 == 0) {
                    int total = 0;
                    for (int i = 0; i < parts.length; i += 2) {
                        number = Long.parseLong(parts[i]);
                        String unitRaw = parts[i + 1];
                        if (!unitRaw.toLowerCase().endsWith("s")) unitRaw += "s";
                        if (unitRaw.equalsIgnoreCase("years")) {
                            number *= 365;
                            unitRaw = "days";
                        }
                        TimeUnit unit = TimeUnit.valueOf(unitRaw.toUpperCase());
                        total += unit.toMinutes(number);
                    }
                    return negative ? -total : total;
                }
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        if (!string.equals(defaultTime)) {
            System.err.println("Time not parsable, defaulting to " + defaultTime);
            number = parseTime(defaultTime, defaultTime);
        } else {
            System.err.println("Time not parsable, defaulting to 30 days");
            number = TimeUnit.DAYS.toMinutes(30);
        }

        return negative ? -number : number;
    }

}
