public class SOQLTest {
	//SOQL returns List
 	public static void accountSOQL_1(){
        List<Account> accList = [SELECT ID, Name, Phone FROM Account WHERE Name LIKE '%United%'];
        system.debug('Account List : '+accList);        
    }
    //SOQL Returns 1 sObject Record  sObject
    public static void accountSOQL_2(){
        Account acc = [SELECT ID, Name, Phone FROM Account ORDER BY CreatedDate DESC LIMIT 1];        
        system.debug('Account Number :' +acc);        
    }
    //SOQL FOR EACH LOOP
    public static void accountSOQL_3(){
         List<Account> accList = [SELECT ID, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC];
         For (Account eachAccount : accList) {
             String accName = eachAccount.Name;
             String accPhone = eachAccount.Phone;
             String accNumber = eachAccount.AccountNumber;             
             system.debug('Account Name is : '+accName+' & '+
                          'Account Phone is : '+accPhone+' & '+
                          'Account Number is : '+accNumber);
        }
    }
    //SOQL WHERE Condition with variable 
    public static void accountSOQL_4(String accName){
        List<Account> accList = [SELECT ID,Name,Phone From Account where Name = :accName];
        System.debug('Account List: '+accList);
    }
    
    //SOQL for Child to Parent 
    public static void SOQL5(){
        List<Contact> conList = [Select ID, Name, Account.Name from Contact where Account.Industry = 'Energy' LIMIT 1];
        system.debug('Contact Name : '+conList.get(0).Name+ ' & '+'Account Name : '+conList.get(0).Account.Name);
    }
    
}