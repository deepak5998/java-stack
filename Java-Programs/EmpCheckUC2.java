/**
  * The Employee check class
  */
public class EmpCheckUC2 {


   private static final int IS_PRESENT=1;

   public static void main(String[] args){
      //Calling function
      final boolean isPresent = empCheck();
      if(isPresent){
         final double wage = calculateWage(20, 8);
         System.out.println("Employee is present");
         System.out.println("Total Employee Wage is: "+ wage);
      }else{
         System.out.println("Employee is absent");
         System.out.println("Total Employee Wage is: 0.0");
      }

   }


   /**
     * Check employee
     * @return true if employee present otherwise false
     */
   public static boolean empCheck(){

      return IS_PRESENT == Math.floor(Math.random() * 10) % 2;
   }
    /**
    * Calculate employee wage based on params
    * @param ratePerHrs the employee rate per hours.\
    * @param totalHrs total employee hours
    * @return total employee wage
    */

   public static double calculateWage(final int ratePerHrs, final int totalHrs){
      return ratePerHrs*totalHrs;
   }
}
