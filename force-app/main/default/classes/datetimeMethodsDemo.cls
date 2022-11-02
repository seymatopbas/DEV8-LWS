public class datetimeMethodsDemo {
    
    public void calculateAgeInMonths(){
        Date birthDate = Date.newInstance(2003, 8, 2);
        Date todayDate = Date.today();
        Integer ageInMonths = birthDate.monthsBetween(todayDate);
        system.debug ('Age in Months: '+ageInMonths);
    }
    
    public void calculateAgeInDays(){
        Date birthDate = Date.newInstance(2003, 8, 2);
        Date todayDate = Date.today();
        
        Integer ageInDays = birthDate.daysBetween(todayDate);
        system.debug ('Age in Months: '+ageInDays);
    }
}