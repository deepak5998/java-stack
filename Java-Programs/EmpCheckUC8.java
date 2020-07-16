public class EmpCheckUC8 {
   //static variables
   private static final int IS_FULL_TIME=1;
   private static final int IS_PART_TIME=2;
/**
  * @return totalWage of employees of diff companies
  */
   public static int computeEmpWage(final Company company) {
   //variables
   int empHrs=0, totalEmpHrs=0, totalWorkingDays=0;
   //Computation
   while(totalEmpHrs <= company.getMaxHrsInMonth() && totalWorkingDays < company.getNumOfWorkingDays()) {
      totalWorkingDays++;
      final int value = (int)Math.floor(Math.random() * 10) % 3;
      switch(value){
         case 1 :
            empHrs=8;
            break;
         case 2 :
            empHrs=4;
            break;
         default :
            empHrs=0;
            break;
         }
      totalEmpHrs+=empHrs;
      System.out.println("Day: "+ totalWorkingDays+ "Emp Hrs: "+ empHrs);
      }
      return totalEmpHrs * company.getEmpRatePerHrs();
   }
   /** dynamically values are assigned to the parameters
<<<<<<< HEAD
     * Created and initialized object
=======
     * We have used parameterized class and object
>>>>>>> 714d68066f2222b9af218a8ba4eb71625eaf4479
     */
   public static void main(String[] args) {
   final Company apple = new Company("Apple",20, 20, 100);
   final int totalWageApple = computeEmpWage(apple);
   System.out.println("Total Emp wage for "+ apple.getName()+": "+totalWageApple);
   final Company samsung = new Company("Samsung",10, 30, 50);
   final int totalWageSamsung = computeEmpWage(samsung);
   System.out.println("Total Emp wage for "+ samsung.getName()+": "+totalWageSamsung);
   }
}

<<<<<<< HEAD
   /** Created a class named company
     * default and parameterized construct is formed
     * we have used getter and setter method to privately access the variables
=======
   /** Created parameterized class and object
     * default and parameterized construct is formed
     * we have used get and set method to privately access the variables
>>>>>>> 714d68066f2222b9af218a8ba4eb71625eaf4479
     */

class Company {

   private String name;

   private int empRatePerHrs;

   private int numOfWorkingDays;

   private int  maxHrsInMonth;

   //default constructor
   public Company() {
   }

   //parameterized constructor
   public Company(final String name, final int empRatePerHrs, final int numOfWorkingDays, final int maxHrsInMonth) {
      this.name=name;
      this.empRatePerHrs=empRatePerHrs;
      this.numOfWorkingDays=numOfWorkingDays;
      this.maxHrsInMonth=maxHrsInMonth;
   }

   // @return values using get and set method
   public void setName(final String name) {
      this.name = name;
   }
   public String getName() {
      return name;
   }
   public void setEmpRatePerHrs(final int empRatePerHrs) {
      this.empRatePerHrs = empRatePerHrs;
   }
   public int getEmpRatePerHrs() {
      return empRatePerHrs;
   }
   public void setNumOfWorkingDays(final int numOfWorkingDays) {
      this.numOfWorkingDays = numOfWorkingDays;
   }
   public int getNumOfWorkingDays() {
      return numOfWorkingDays;
   }
   public void setMaxHrsInMonth(final int maxHrsInMonth) {
      this.maxHrsInMonth = maxHrsInMonth;
   }
   public int getMaxHrsInMonth() {
      return maxHrsInMonth;
   }
}
