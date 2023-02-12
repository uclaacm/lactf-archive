package github.scarsz.bin.route;

import github.scarsz.bin.Bin;
import github.scarsz.bin.Server;
import org.apache.commons.lang.StringUtils;
import spark.Request;
import spark.Response;
import spark.Route;

import java.util.HashMap;

import static spark.Spark.halt;

public class GetBinRoute implements Route {

    @Override
    public Object handle(Request request, Response response) throws Exception {
        String id = request.params("id");
        Bin bin = Bin.forRequest(request);
        bin.incrementHits();

        if (id.contains(".")) {
            String extension = id.toLowerCase();
            extension = extension.substring(extension.lastIndexOf(".") + 1);
            if (StringUtils.isBlank(extension)) {
                response.redirect(id.replace(".", ""));
            } else {
                response.redirect("/api/" + id);
            }

            return null;
        }

        if (request.userAgent().contains("Trident") || request.userAgent().contains("Edge")) {
            halt(200, "<pre>This site uses in-browser AES decryption & B64 decoding to serve it's files. " +
                    "Your browser is not modern enough to support these things. " +
                    "Please try using Chrome, Firefox, or Vivaldi instead.</pre>");
        }

        HashMap<String, Object> model = new HashMap<>();
        model.put("id", id);
        model.put("version", Server.version);
        return Server.render(model, "templates/view.vm");
    }

}
