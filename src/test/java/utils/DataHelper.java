package utils;

import java.math.BigInteger;
import java.util.Random;

public class DataHelper {
    
    // Calculates factorial
    public static BigInteger factorialCalculation(int num){
        //long factorial = 1;
        BigInteger factorial = BigInteger.ONE;
        for(int i = 1; i <= num; ++i)
        {
            // factorial = factorial * i;
            // factorial *= i;
            factorial = factorial.multiply(BigInteger.valueOf(i));

        }
        return factorial;
    }

    // Takes an int as max value and returns a random int between 0 and max
    public static Integer randomNumber(int max) {
        Random rand = new Random();
        return rand.nextInt(max);
      }
    
}
