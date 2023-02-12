package github.scarsz.bin.route.api.v1;

import github.scarsz.bin.Bin;
import github.scarsz.bin.Server;
import org.apache.commons.lang3.StringUtils;
import spark.Request;
import spark.Response;
import spark.Route;

import java.util.*;

import static spark.Spark.halt;

public class ApiV1PostRoute implements Route {

    @Override
    public Object handle(Request request, Response response) throws Exception {
        if (StringUtils.isBlank(request.body())) return halt(400, "{\"error\":{\"type\":\"BlankBodyException\", \"message\":\"No content received\"}}");
        Map json = Server.getGson().fromJson(request.body(), Map.class);

        long expiration;
        if (json.containsKey("expiration")) expiration = (long) (double) json.get("expiration");
        else expiration = Server.getDefaultExpiration();

        if (Math.abs(expiration) > Server.getMaximumExpiration()) {
            throw new IllegalArgumentException("Maximum expiration time is " + Server.getMaximumExpiration() + " minutes");
        }

        byte[] description = StringUtils.isNotBlank((String) json.get("description"))
                ? Base64.getDecoder().decode((String) json.get("description"))
                : null;

        Bin bin = Bin.create(expiration, description);
        for (Map file : new LinkedList<>((ArrayList<Map>) json.get("files"))) {
            byte[] nameBytes = Base64.getDecoder().decode((String) file.get("name"));
            byte[] contentBytes = Base64.getDecoder().decode((String) file.get("content"));
            byte[] typeBytes = StringUtils.isNotBlank((String) file.get("type")) ? Base64.getDecoder().decode((String) file.get("type")) : null;
            byte[] descriptionBytes = StringUtils.isNotBlank((String) file.get("description")) ? Base64.getDecoder().decode((String) file.get("description")) : null;
            bin.addFile(nameBytes, contentBytes, typeBytes, descriptionBytes);
        }

        Map<String, Object> payload = new HashMap<>();
        payload.put("status", "ok");
        payload.put("bin", bin.getId());

        return Server.getGsonPretty().toJson(payload);
    }

}
