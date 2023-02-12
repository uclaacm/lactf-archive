import java.util.Scanner;
import java.nio.charset.Charset;

class FlagChecker {
    public static void main(String[] args) {
        System.out.print("What's the flag? ");
        System.out.flush();
        Scanner sc = new Scanner(System.in);
        String inpstr = sc.nextLine();
        sc.close();
        byte[] inp = inpstr.getBytes(Charset.forName("UTF-8"));
        if (inp.length == 38 && (((inp[34] ^ (inp[23] * 7) ^ ((~inp[36]) + 13)) & 0xff) == 182) && (((inp[37] ^ (inp[10] * 7) ^ ((~inp[21]) + 13)) & 0xff) == 223) && (((inp[24] ^ (inp[23] * 7) ^ ((~inp[19]) + 13)) & 0xff) == 205) && (((inp[25] ^ (inp[13] * 7) ^ ((~inp[23]) + 13)) & 0xff) == 144) && (((inp[6] ^ (inp[27] * 7) ^ ((~inp[25]) + 13)) & 0xff) == 138) && (((inp[4] ^ (inp[32] * 7) ^ ((~inp[22]) + 13)) & 0xff) == 227) && (((inp[25] ^ (inp[19] * 7) ^ ((~inp[1]) + 13)) & 0xff) == 107) && (((inp[22] ^ (inp[7] * 7) ^ ((~inp[29]) + 13)) & 0xff) == 85) && (((inp[15] ^ (inp[10] * 7) ^ ((~inp[20]) + 13)) & 0xff) == 188) && (((inp[29] ^ (inp[16] * 7) ^ ((~inp[12]) + 13)) & 0xff) == 88) && (((inp[35] ^ (inp[4] * 7) ^ ((~inp[33]) + 13)) & 0xff) == 84) && (((inp[36] ^ (inp[2] * 7) ^ ((~inp[4]) + 13)) & 0xff) == 103) && (((inp[26] ^ (inp[3] * 7) ^ ((~inp[1]) + 13)) & 0xff) == 216) && (((inp[12] ^ (inp[6] * 7) ^ ((~inp[18]) + 13)) & 0xff) == 165) && (((inp[12] ^ (inp[28] * 7) ^ ((~inp[36]) + 13)) & 0xff) == 151) && (((inp[20] ^ (inp[0] * 7) ^ ((~inp[21]) + 13)) & 0xff) == 101) && (((inp[27] ^ (inp[36] * 7) ^ ((~inp[14]) + 13)) & 0xff) == 248) && (((inp[35] ^ (inp[2] * 7) ^ ((~inp[19]) + 13)) & 0xff) == 44) && (((inp[13] ^ (inp[11] * 7) ^ ((~inp[33]) + 13)) & 0xff) == 242) && (((inp[33] ^ (inp[11] * 7) ^ ((~inp[3]) + 13)) & 0xff) == 235) && (((inp[31] ^ (inp[37] * 7) ^ ((~inp[29]) + 13)) & 0xff) == 248) && (((inp[1] ^ (inp[33] * 7) ^ ((~inp[31]) + 13)) & 0xff) == 33) && (((inp[34] ^ (inp[22] * 7) ^ ((~inp[35]) + 13)) & 0xff) == 84) && (((inp[36] ^ (inp[16] * 7) ^ ((~inp[4]) + 13)) & 0xff) == 75) && (((inp[8] ^ (inp[3] * 7) ^ ((~inp[10]) + 13)) & 0xff) == 214) && (((inp[20] ^ (inp[5] * 7) ^ ((~inp[12]) + 13)) & 0xff) == 193) && (((inp[28] ^ (inp[34] * 7) ^ ((~inp[16]) + 13)) & 0xff) == 210) && (((inp[3] ^ (inp[35] * 7) ^ ((~inp[9]) + 13)) & 0xff) == 205) && (((inp[27] ^ (inp[22] * 7) ^ ((~inp[2]) + 13)) & 0xff) == 46) && (((inp[27] ^ (inp[18] * 7) ^ ((~inp[9]) + 13)) & 0xff) == 54) && (((inp[3] ^ (inp[29] * 7) ^ ((~inp[22]) + 13)) & 0xff) == 32) && (((inp[24] ^ (inp[4] * 7) ^ ((~inp[13]) + 13)) & 0xff) == 99) && (((inp[22] ^ (inp[16] * 7) ^ ((~inp[13]) + 13)) & 0xff) == 108) && (((inp[12] ^ (inp[8] * 7) ^ ((~inp[30]) + 13)) & 0xff) == 117) && (((inp[25] ^ (inp[27] * 7) ^ ((~inp[35]) + 13)) & 0xff) == 146) && (((inp[16] ^ (inp[10] * 7) ^ ((~inp[14]) + 13)) & 0xff) == 250) && (((inp[21] ^ (inp[25] * 7) ^ ((~inp[12]) + 13)) & 0xff) == 195) && (((inp[26] ^ (inp[10] * 7) ^ ((~inp[30]) + 13)) & 0xff) == 203) && (((inp[20] ^ (inp[2] * 7) ^ ((~inp[1]) + 13)) & 0xff) == 47) && (((inp[34] ^ (inp[12] * 7) ^ ((~inp[27]) + 13)) & 0xff) == 121) && (((inp[19] ^ (inp[34] * 7) ^ ((~inp[20]) + 13)) & 0xff) == 246) && (((inp[25] ^ (inp[22] * 7) ^ ((~inp[14]) + 13)) & 0xff) == 61) && (((inp[19] ^ (inp[28] * 7) ^ ((~inp[37]) + 13)) & 0xff) == 189) && (((inp[24] ^ (inp[9] * 7) ^ ((~inp[17]) + 13)) & 0xff) == 185)) {
            System.out.println("Correct!");
        } else {
            System.out.println("Not quite...");
        }
    }
}
