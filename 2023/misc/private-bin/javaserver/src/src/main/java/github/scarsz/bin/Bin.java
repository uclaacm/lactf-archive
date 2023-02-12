package github.scarsz.bin;

import github.scarsz.bin.exception.BinNotFoundException;
import net.jodah.expiringmap.ExpirationPolicy;
import net.jodah.expiringmap.ExpiringMap;
import spark.Request;

import java.io.ByteArrayInputStream;
import java.io.Serializable;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.*;
import java.util.concurrent.TimeUnit;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import static spark.Spark.halt;

public class Bin {

    private static ExpiringMap<UUID, Bin> CACHE;

    public static void setCache(int maxSize, int expiration, TimeUnit expirationUnit) {
        CACHE = ExpiringMap.builder()
                .maxSize(maxSize)
                .expiration(expiration, expirationUnit)
                .expirationPolicy(ExpirationPolicy.ACCESSED)
                .build();
    }

    public static Bin create() throws SQLException {
        return create(TimeUnit.DAYS.toMinutes(30), null);
    }

    public static Bin create(long expiration) throws SQLException {
        return create(expiration, null);
    }

    public static Bin create(byte[] description) throws SQLException {
        return create(TimeUnit.DAYS.toMinutes(30), description);
    }

    public static Bin create(long expiration, byte[] description) throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("INSERT INTO `bins` (`expiration`, `description`) VALUES (?, ?)", Statement.RETURN_GENERATED_KEYS);
        statement.setLong(1, expiration);
        statement.setBlob(2, description != null ? new ByteArrayInputStream(description) : null);
        statement.executeUpdate();
        ResultSet result = statement.getGeneratedKeys();
        if (result.next()) {
            return retrieve((UUID) result.getObject("id"));
        } else {
            throw new SQLException("SQL insertion failed for creation of bin");
        }
    }

    public static Bin retrieve(UUID id) throws BinNotFoundException {
        return CACHE.computeIfAbsent(id, (v) -> new Bin(id));
    }

    public static Stream<Bin> retrieveAll() throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("select `id` from `bins`");
        ResultSet result = statement.executeQuery();
        Set<UUID> uuids = new HashSet<>();
        while (result.next()) uuids.add((UUID) result.getObject("id"));
        return Stream.of(uuids.toArray(new UUID[0]))
                .map(Bin::retrieve);
    }

    private final UUID id;
    private final List<File> files = new LinkedList<>();
    private long time = -1;
    private Long expiration = 0L; // using Long because expiration can be null
    private long generationTime = -1;

    public static Bin forRequest(Request request) {
        String idRaw = request.params("id").split("\\.")[0];
        if (idRaw.length() != 36) halt(404);
        UUID uuid = UUID.fromString(idRaw);
        return Bin.retrieve(uuid);
    }

    private Bin(UUID id) throws BinNotFoundException {
        this.id = id;

        if (!exists()) throw new BinNotFoundException(id);
    }

    public boolean exists() {
        try {
            PreparedStatement statement = Server.getConnection().prepareStatement("select 1 from `bins` where `id` = ?");
            statement.setString(1, id.toString());
            return statement.executeQuery().next();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
    }

    public File addFile(byte[] name, byte[] content, byte[] type, byte[] description) throws SQLException {
        return addFile(id, name, content, type, description);
    }

    public static File addFile(UUID bin, byte[] name, byte[] content, byte[] type, byte[] description) throws SQLException {
        if (name == null || name.length == 0) throw new IllegalArgumentException("File must have a name");
        if (name.length % 16 != 0) throw new IllegalArgumentException("File name must be divisible by 16");
        if (content == null || content.length == 0) throw new IllegalArgumentException("File \"" + Arrays.toString(name) + "\" must have content");
        if (content.length % 16 != 0) throw new IllegalArgumentException("File content must be divisible by 16");
        if (type != null && type.length % 16 != 0) throw new IllegalArgumentException("File type must be divisible by 16");
        if (description != null && description.length % 16 != 0) throw new IllegalArgumentException("File description must be divisible by 16");
        PreparedStatement statement = Server.getConnection().prepareStatement("INSERT INTO `files` (`bin`, `type`, `name`, `content`, `description`) VALUES (?, ?, ?, ?, ?)", Statement.RETURN_GENERATED_KEYS);
        statement.setObject(1, bin);
        statement.setBlob(2, type != null ? new ByteArrayInputStream(type) : null);
        statement.setBlob(3, new ByteArrayInputStream(name));
        statement.setBlob(4, new ByteArrayInputStream(content));
        statement.setBlob(5, description != null ? new ByteArrayInputStream(description) : null);
        statement.executeUpdate();
        ResultSet result = statement.getGeneratedKeys();
        if (result.next()) {
            return new File((UUID) result.getObject("id"));
        } else {
            throw new SQLException("Failed to add file to bin " + bin);
        }
    }

    public boolean delete() throws SQLException {
        return delete(this.id);
    }

    public static boolean delete(UUID bin) throws SQLException {
        Server.getConnection().setAutoCommit(false);
        PreparedStatement statement = Server.getConnection().prepareStatement("delete from `bins` where `id` = ?");
        statement.setObject(1, bin);
        boolean existed = statement.executeUpdate() != 0;

        statement = Server.getConnection().prepareStatement("delete from `files` where `bin` = ?");
        statement.setObject(1, bin);

        Server.getConnection().setAutoCommit(true);
        return existed;
    }

    public UUID getId() {
        return id;
    }

    public List<File> getFiles() throws SQLException {
        if (files.size() > 0) return files;

        PreparedStatement statement = Server.getConnection().prepareStatement("select `id` from `files` where `bin` = ?");
        statement.setString(1, id.toString());
        ResultSet result = statement.executeQuery();

        while (result.next()) {
            files.add(new File(UUID.fromString(result.getString("id"))));
        }

        if (files.size() == 0) throw new BinNotFoundException(id);
        return files;
    }

    public int getHits() throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("select `hits` from `bins` where `id` = ?");
        statement.setString(1, id.toString());
        ResultSet result = statement.executeQuery();
        if (result.next()) {
            return result.getInt("hits");
        } else {
            throw new BinNotFoundException(id);
        }
    }

    public void incrementHits() throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("update `bins` set `hits` = `hits` + 1 where `id` = ?");
        statement.setString(1, id.toString());
        statement.executeUpdate();
    }

    public long getTime() throws SQLException {
        if (time != -1) return time;
        time = getAttribute("time");
        return time;
    }

    public long getExpiration() throws SQLException {
        if (expiration != 0) return expiration;
        expiration = getAttribute("expiration");
        return expiration;
    }

    public void setLastAccess() throws SQLException {
        setLastAccess(System.currentTimeMillis());
    }
    public void setLastAccess(long time) throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("update `bins` set `lastAccess` = ? where `id` = ?");
        statement.setLong(1, time);
        statement.setString(2, id.toString());
        if (statement.executeUpdate() == 0) {
            throw new BinNotFoundException(id);
        }
    }

    public String getDescription() throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("select `description` from `bins` where `id` = ?");
        statement.setString(1, id.toString());
        ResultSet result = statement.executeQuery();
        if (result.next()) {
            byte[] bytes = result.getBytes("description");
            return bytes != null ? Base64.getEncoder().encodeToString(bytes) : null;
        } else {
            throw new BinNotFoundException(id);
        }
    }

    private <T> T getAttribute(String column) throws SQLException {
        PreparedStatement statement = Server.getConnection().prepareStatement("select " + column + " from `bins` where id = ?");
        statement.setString(1, id.toString());
        ResultSet result = statement.executeQuery();
        if (result.next()) {
            return (T) result.getObject(column);
        } else {
            throw new BinNotFoundException(id);
        }
    }

    public long getGenerationTime() {
        return generationTime;
    }

    private final Map<String, Object> serialized = new HashMap<>();

    public Map<String, Object> serialize() throws SQLException {
        if (serialized.size() > 0) {
            serialized.put("hits", getHits()); // can't be cached because it changes
            return serialized;
        } else {
            long generation = System.currentTimeMillis();
            serialized.put("id", id);
            serialized.put("files", getFiles().stream().map(file -> {
                try {
                    return file.serialize();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }).filter(Objects::nonNull).collect(Collectors.toList()));
            serialized.put("hits", getHits());
            serialized.put("time", getTime());
            serialized.put("expiration", getExpiration());
            serialized.put("description", getDescription());
            if (generationTime < 0) generationTime = System.currentTimeMillis() - generation;
            serialized.put("generationTime", generationTime);
            return serialized;
        }
    }

    public static class File implements Serializable {

        private final UUID id;
        private String type = null;
        private String name = null;
        private String content = null;

        public File(UUID id) {
            this.id = id;
        }

        public UUID getId() {
            return id;
        }

        public String getType() throws SQLException {
            if (type != null) return type;

            PreparedStatement statement = Server.getConnection().prepareStatement("select `type` from `files` where `id` = ?");
            statement.setString(1, id.toString());
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                byte[] type = result.getBytes("type");
                return type != null ? Base64.getEncoder().encodeToString(type) : null;
            } else {
                throw new BinNotFoundException(id);
            }
        }

        public String getName() throws SQLException {
            if (name != null) return name;

            PreparedStatement statement = Server.getConnection().prepareStatement("select `name` from `files` where `id` = ?");
            statement.setString(1, id.toString());
            ResultSet result = statement.executeQuery();
            if (result.next()) {
//                Blob blob = result.getBlob("name");
//                this.name = Base64.getEncoder().encodeToString(blob.getBytes(1, (int) blob.length()));
//                blob.free();
//                return this.name;
                return Base64.getEncoder().encodeToString(result.getBytes("name"));
            } else {
                throw new BinNotFoundException(id);
            }
        }

        public String getDescription() throws SQLException {
            PreparedStatement statement = Server.getConnection().prepareStatement("select `description` from `files` where `id` = ?");
            statement.setString(1, id.toString());
            ResultSet result = statement.executeQuery();
            if (result.next()) {
                byte[] bytes = result.getBytes("description");
                return bytes != null ? Base64.getEncoder().encodeToString(bytes) : null;
            } else {
                throw new BinNotFoundException(id);
            }
        }

        public String getContent() throws SQLException {
            if (content != null) return content;

            PreparedStatement statement = Server.getConnection().prepareStatement("select `content` from `files` where `id` = ?");
            statement.setString(1, id.toString());
            ResultSet result = statement.executeQuery();
            if (result.next()) {
//                Blob blob = result.getBlob("content");
//                this.content = Base64.getEncoder().encodeToString(blob.getBytes(1, (int) blob.length()));
//                blob.free();
//                return this.content;
                return Base64.getEncoder().encodeToString(result.getBytes("content"));
            } else {
                throw new BinNotFoundException(id);
            }
        }

        public Map<String, Object> serialize() throws SQLException {
            HashMap<String, Object> map = new HashMap<>();
            map.put("id", id);
            map.put("type", getType());
            map.put("name", getName());
            map.put("description", getDescription());
            map.put("content", getContent());
            return map;
        }

    }

}
