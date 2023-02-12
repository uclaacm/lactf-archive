package github.scarsz.bin.route;

import github.scarsz.bin.Server;
import spark.Request;
import spark.Response;
import spark.Route;

import java.util.HashMap;

public class IndexRoute implements Route {

    @Override
    public Object handle(Request request, Response response) throws Exception {
        HashMap<String, Object> model = new HashMap<>();
        model.put("version", Server.version);
        model.put("foreground", "white");
        model.put("background", "#F8A3BF");
        response.redirect("https://github.com/Scarsz/Bin#developers");
        return Server.render(model, "templates/index.vm");
    }

}
