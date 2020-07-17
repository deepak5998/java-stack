import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;
public class EmpWageBuilder implements ComputeWage {

   //static variable
   private static final int IS_FULL_TIME=1;
   private static final int IS_PART_TIME=2;

   //instance variable
   private List<Company> companyList;
   private Map<String, Company> map;
   //constructor to create ArrayList and HashMap
   public EmpWageBuilder() {
      this.companyList = new ArrayList<>();
      this.map = new HashMap<>();
   }


   //instance methods
   //@override
   public void addCompany(final String name, final int empRatePerHrs, final int numOfWorkingDays, final int max>
      final Company company = new Company(name, empRatePerHrs, numOfWorkingDays, maxHrsInMonth);
      companyList.add(company);
      map.put(name, company);
   }

   //@override
   public void computeWage(){
      for(int i = 0; i < companyList.size(); i++){
         this.computeEmpWage(companyList.get(i));
         System.out.println(companyList.get(i));
      }
   }

   private void computeEmpWage(final Company company) {
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
      final int wage = totalEmpHrs * company.getEmpRatePerHrs();
      company.setTotalEmpWage(wage);
   }

   /** test client
     * create and initialize object
     * invoke constructor
     * use object name to invoke methods
     */

   //@override
   public int getTotalWageByCompanyName(String name){
   final Company company = map.get(name);
   return company.getTotalEmpWage();
   }

   public static void main(String[] args) {
   ComputeWage cw = new EmpWageBuilder();
   //for Apple
   cw.addCompany("Apple", 20, 20, 100);
   //for Samsung
   cw.addCompany("Samsung", 22, 30, 100);
   cw.computeWage();

   final int appleWage = cw.getTotalWageByCompanyName("Apple");
   System.out.println("Total Emp Wage for Apple is: "+ appleWage);

   final int samsungWage = cw.getTotalWageByCompanyName("Samsung");
   System.out.println("Total Emp Wage for Samsung is: "+ samsungWage);

   }
}
   /** Created a class named Company
     * default and parameterized construct is formed
     * we have used getter and setter method to privately access the variables
     * @override instance method toString() is created
     */


interface ComputeWage{
   void addCompany(final String name, final int empRatePerHrs, final int numOfWorkingDays, final int maxHrsInMo>
   void computeWage();
   int getTotalWageByCompanyName(String name);
}

class Company {

   private String name;

   private int empRatePerHrs;

   private int numOfWorkingDays;

   private int maxHrsInMonth;

   private int totalEmpWage;

   //default constructor
   public Company() {
   }

   //parameterized constructor
   public Company(final String name, final int empRatePerHrs, final int numOfWorkingDays, final int maxHrsInMon>
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
   public void setTotalEmpWage(final int totalEmpWage) {
      this.totalEmpWage = totalEmpWage;
   }
   public int getTotalEmpWage() {
      return totalEmpWage;
   }
   // @override
   public String toString(){
      return "Total Emp wage for Company "+ name +" is: "+ totalEmpWage;
   }
}


