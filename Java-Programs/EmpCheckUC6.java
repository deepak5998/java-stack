/**
  * The Employee check class
  */
public class EmpCheckUC6 {

   private static final int IS_FULL_TIME=1;
   private static final int IS_PART_TIME=2;
   private static final int TOTAL_WORKING_DAYS=20;
   private static final int MAX_HRS_IN_MONTH=100;
   private static int totalEmpHrs=0;
   private static int totalWorkingDays=0;

   public static void main(String[] args){
      //Calling function
      final int isPresent = empCheck();
       switch(isPresent){
         case 1 :{
            final double wage = calculateWage(20, 8);
            System.out.println("Total Salary for full time:"+ wage);
            }
            break;
         case 2 :{
            final double wage = calculateWage(20, 4);
            System.out.println("Total Salary for part time"+ wage);
            }break;
         default :{
            System.out.println("Employee is absent");
            System.out.println("Total Salary is: 0");
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
      while(totalEmpHrs <= MAX_HRS_IN_MONTH && totalWorkingDays < TOTAL_WORKING_DAYS){
         totalWorkingDays++;
         totalEmpHrs = totalEmpHrs + totalHrs;
         }return ratePerHrs*totalEmpHrs;
      }
}
