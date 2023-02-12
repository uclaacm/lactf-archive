package github.scarsz.bin.exception;

import java.util.UUID;

public class BinNotFoundException extends RuntimeException {

    private final UUID id;

    public BinNotFoundException(UUID id) {
        super("Bin " + id + " not found");
        this.id = id;
    }

    public UUID getId() {
        return id;
    }

}
