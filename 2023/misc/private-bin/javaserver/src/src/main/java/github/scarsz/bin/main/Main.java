package github.scarsz.bin.main;

import github.scarsz.bin.Server;
import github.scarsz.configuralize.ParseException;

import java.io.IOException;
import java.sql.SQLException;

public class Main {

    public static void main(String[] args) throws SQLException, IOException, ParseException {
        new Server();
    }

}
