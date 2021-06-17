package util.validate;

public class ValidateUtil {
    public static boolean validateEmpty(String data) {
        if (data == null || "".equals(data)) {
            return false ;
        }
        return true ;
    }

    public static boolean validateRegex(String data,String regex) {
        if (validateEmpty(data)) {
            return data.matches(regex) ;
        }
        return false ;
    }

    public static boolean validateSame(String dataa,String datab) {
        if (validateEmpty(dataa) && validateEmpty(datab)) {
            return dataa.equalsIgnoreCase(datab) ;
        }
        return false ;
    }
}
