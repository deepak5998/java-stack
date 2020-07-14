/**
  * The Employee check class
  */
public class EmpCheckUC3 {

   private static final int IS_FULL_TIME=1;
   private static final int IS_PART_TIME=2;

   public static void main(String[] args){
      //Calling function
      final double isPresent = empCheck();
      if(isPresent == 1){
         final double wage = calculateWage(20, 8);
         System.out.println("Employee is present full time.");
         System.out.println("Total Employee Wage is: "+ wage);
      }else if(isPresent == 2){
         final double wage = calculateWage(20, 4);
         System.out.println("Employee is present half time");
         System.out.println("Total Employee Wage is: "+ wage);
      }
      else{
         System.out.println("Employee is absent");
         System.out.println("Total Employee Wage is: 0.0");
      }

   }


   /**
     * Check employee
     * @return true if employee present otherwise false
     */
   public static double empCheck(){

      double IS_PRESENT = Math.floor(Math.random() * 10) % 3;
      return IS_PRESENT;
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
