/**
  * The Employee check class
  */
public class EmpCheckUC4 {

   private static final int IS_FULL_TIME=1;
   private static final int IS_PART_TIME=2;

   public static void main(String[] args){
      //Calling function
      final int isPresent = empCheck();
      switch(isPresent){
         case 1 :{
            final double wage = calculateWage(20, 8);
            System.out.println("Employee is present for full time");
            System.out.println("Total Employee Wage for full time is: "+ wage);
            }break;
         case 2 :{
            final double wage = calculateWage(20, 4);
            System.out.println("Employee is present for part time");
            System.out.println("Total Employee Wage for part time is: "+ wage);
            }break;
         default :{
            System.out.println("Employee is absent");
            System.out.println("Total Employee Wage is: 0");
            }break;
      }

   }


   /**
     * Check employee
     * @return true if employee present otherwise false
     */
   public static int empCheck(){

      final int IS_PRESENT = (int)Math.floor(Math.random() * 10) % 3;
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
