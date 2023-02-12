package github.scarsz.bin.main;

import com.github.kevinsawicki.http.HttpRequest;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import org.apache.commons.lang3.ArrayUtils;
import org.apache.commons.lang3.exception.ExceptionUtils;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.security.SecureRandom;
import java.util.*;

public class UploadTest {

    private static final Gson GSON = new GsonBuilder().disableHtmlEscaping().create();
    private static final SecureRandom RANDOM = new SecureRandom();

    public static void main(String[] args) throws IOException {
        byte[] key = "01234567890123456789012345678901".getBytes(StandardCharsets.UTF_8);

        List<Map<String, Object>> files = new LinkedList<>();
        Map<String, Object> file;
        file = new HashMap<>();
        file.put("name", b64(encrypt(key, "stack.txt".getBytes(StandardCharsets.UTF_8))));
        file.put("content", b64(encrypt(key, ExceptionUtils.getStackTrace(new Throwable()).getBytes(StandardCharsets.UTF_8))));
        file.put("type", b64(encrypt(key, "text/plain".getBytes(StandardCharsets.UTF_8))));
        file.put("description", b64(encrypt(key, "files can have descriptions too".getBytes(StandardCharsets.UTF_8))));
        files.add(file);
        file = new HashMap<>();
        file.put("name", b64(encrypt(key, "lorem-ipsum.log".getBytes(StandardCharsets.UTF_8))));
        file.put("content", b64(encrypt(key, ("Maecenas sit amet leo porttitor, vestibulum ligula non, posuere tortor.\n" +
                "Nullam laoreet nunc nec velit molestie, sit amet lacinia tellus consequat.\n" +
                "In at sapien sit amet lacus tincidunt ullamcorper non id nulla.\n" +
                "Proin quis ligula quis dui facilisis lobortis sed lacinia neque.\n" +
                "Nam et est laoreet, imperdiet nunc semper, ornare augue.\n" +
                "Nunc fermentum nulla vel turpis ornare porttitor.\n" +
                "Maecenas sit amet leo porttitor, vestibulum ligula non, posuere tortor.\n" +
                "Nullam laoreet nunc nec velit molestie, sit amet lacinia tellus consequat.\n" +
                "In at sapien sit amet lacus tincidunt ullamcorper non id nulla.\n" +
                "Proin quis ligula quis dui facilisis lobortis sed lacinia neque.\n" +
                "Nam et est laoreet, imperdiet nunc semper, ornare augue.\n" +
                "Nunc fermentum nulla vel turpis ornare porttitor.\n" +
                "Maecenas sit amet leo porttitor, vestibulum ligula non, posuere tortor.\n" +
                "Nullam laoreet nunc nec velit molestie, sit amet lacinia tellus consequat.\n" +
                "In at sapien sit amet lacus tincidunt ullamcorper non id nulla.\n" +
                "Proin quis ligula quis dui facilisis lobortis sed lacinia neque.\n" +
                "Nam et est laoreet, imperdiet nunc semper, ornare augue.\n" +
                "Nunc fermentum nulla vel turpis ornare porttitor.\n\nhaha <xss goes=\"brr\">").getBytes(StandardCharsets.UTF_8))));
        file.put("type", b64(encrypt(key, "text/plain".getBytes(StandardCharsets.UTF_8))));
        files.add(file);
        file = new HashMap<>();
        file.put("name", b64(encrypt(key, "more".getBytes(StandardCharsets.UTF_8))));
        file.put("content", b64(encrypt(key, "nerd nerd nerd nerd nerd nerd nerd".getBytes(StandardCharsets.UTF_8))));
        file.put("type", b64(encrypt(key, "application/octet-stream".getBytes(StandardCharsets.UTF_8))));
        file.put("description", b64(encrypt(key, "text file that's being described as an octet stream".getBytes(StandardCharsets.UTF_8))));
        files.add(file);

        Map<String, Object> payload = new HashMap<>();
        payload.put("files", files);
        payload.put("description", b64(encrypt(key, "bins can have descriptions".getBytes(StandardCharsets.UTF_8))));
        payload.put("expiration", 1);
        String json = GSON.toJson(payload);
        System.out.println(json);

//        String host = "http://localhost:6122/v1/post";
        String host = "https://bin.scarsz.me/v1/post";
        HttpRequest request = HttpRequest.post(host)
                .userAgent("UploadTest").send(json);
        System.out.println("API produced code " + request.code());
        System.out.println(request.body());
    }

    public static String b64(byte[] data) {
        String base64 = Base64.getEncoder().encodeToString(data);
        System.out.println(base64);
        return base64;
    }

    public static byte[] encrypt(byte[] key, byte[] data) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            byte[] iv = new byte[cipher.getBlockSize()];
            RANDOM.nextBytes(iv);
            cipher.init(Cipher.ENCRYPT_MODE, new SecretKeySpec(key, "AES"), new IvParameterSpec(iv));
            byte[] encrypted = cipher.doFinal(data);
            byte[] finished = ArrayUtils.addAll(iv, encrypted);
            System.out.println("IV -> " + Arrays.toString(iv));
            System.out.println("Encrypted [" + encrypted.length + "] -> " + encrypted[encrypted.length - 1]);
            System.out.println("Finished [+" + (finished.length - encrypted.length) + "] -> " + finished[finished.length - 1]);
            return finished;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

}
