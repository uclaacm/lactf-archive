package github.scarsz.bin.main;

import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.Base64;
import java.util.Objects;

public class DecryptTest {

    public static void main(String[] args) {
        byte[] input = b64d("XpNzkyIEkXTzIR2AbU660TbWCXpjPWeJzK0ANNO77FpbXiv2V14odsPDNzOD7iyqfPLkK0xZ8fThxaMuK0m+pSrsZZMAb34J+L8VoWa2Uc+UBQXW4ro+G3b0CdWeZsUAWoWPk2jPVJF4sSJO4xvUmA==");
        byte[] key = "01234567890123456789012345678901".getBytes(StandardCharsets.UTF_8);
        byte[] decrypted = decrypt(key, input);
        System.out.println(new String(Objects.requireNonNull(decrypted)));
    }

    public static byte[] decrypt(byte[] key, byte[] in) {
        try {
            byte[] iv = Arrays.copyOfRange(in, 0, 16);
            byte[] data = Arrays.copyOfRange(in, 16, in.length);

            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5PADDING");
            cipher.init(Cipher.DECRYPT_MODE, new SecretKeySpec(key, "AES"), new IvParameterSpec(iv));
            return cipher.doFinal(data);
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public static byte[] b64d(String data) {
        return Base64.getDecoder().decode(data);
    }

}
