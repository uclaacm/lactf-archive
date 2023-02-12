package github.scarsz.bin.route.api.v1;

import github.scarsz.bin.Bin;
import github.scarsz.bin.Server;
import org.apache.commons.lang.NotImplementedException;
import org.apache.commons.lang.StringUtils;
import spark.Request;
import spark.Response;
import spark.Route;

import java.util.HashMap;
import java.util.Map;

public class ApiV1GetBinRoute implements Route {

    @Override
    public Object handle(Request request, Response response) throws Exception {
        String id = request.params("id");

        Map<String, Object> serverInfo = new HashMap<>();
        serverInfo.put("version", Server.version);
        serverInfo.put("uptime", Server.getUptime());

        Bin bin = Bin.forRequest(request);
        bin.incrementHits();
        bin.setLastAccess();
        Map<String, Object> serialized = bin.serialize();
        serialized.put("server", serverInfo);

        if (!id.contains(".")) {
            response.redirect("/v1/" + request.params("id") + ".xml");
            return null;
        }

        String extension = id.toLowerCase();
        extension = extension.substring(extension.lastIndexOf(".") + 1);
        if (StringUtils.isBlank(extension)) {
            response.redirect(id.replace(".", ""));
            return null;
        }

        if (extension.equals("json")) {
            response.type("application/json");
            return Server.getInstance().getGsonPretty().toJson(serialized);
        }

        if (extension.equals("xml")) {
            response.type("text/xml");
            StringBuilder xml = new StringBuilder()
                    .append("<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n")
                    .append("<?xml-stylesheet type='text/xsl' href='/styles/bin.xsl'?>\n")
                    .append(String.format("<bin id=\"%s\" hits=\"%s\" time=\"%s\" expiration=\"%s\" description=\"%s\" generation=\"%s\" version=\"%s\" uptime=\"%s\">\n",
                            bin.getId(), bin.getHits(), bin.getTime(), bin.getExpiration(), bin.getDescription(),
                            bin.getGenerationTime(), Server.version, Server.getUptime())
                    );
            for (Bin.File file : bin.getFiles()) {
                xml.append(String.format("<file id=\"%s\" type=\"%s\">\n", file.getId(), file.getType()))
                        .append("<name>").append(file.getName()).append("</name>\n")
                        .append("<description>").append(file.getDescription()).append("</description>\n")
                        .append("<content>").append(file.getContent()).append("</content>\n")
                        .append("</file>\n");
            }
            xml.append("</bin>\n");
            return xml.toString();
        }

        throw new NotImplementedException("API extension " + extension + " is not supported by this endpoint");
    }

}
