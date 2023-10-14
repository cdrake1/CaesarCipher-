public class CaesarJava {
    public static void main(String[] args) {
        String input = "hi";
        int shift = 7;
        StringBuilder encryptedText = new StringBuilder();

        for (int i = 0; i < input.length(); i++) {
            char currentChar = input.charAt(i);
            char encryptedChar = (char) ('a' + (currentChar - 'a' + shift) % 26);
            encryptedText.append(encryptedChar);
        }
        System.out.println(encryptedText.toString());
    }
}
