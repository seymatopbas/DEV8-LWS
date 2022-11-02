public class SOQL {
         //SOQL Returns 1 sObject Record  sObject
    public static void accountSOQL_2(){
        Account acc = [SELECT ID, Name, Phone, AccountNumber FROM Account ORDER BY CreatedDate DESC LIMIT 1];
        //Can be stored in a variable
        String accName = acc.Name;
        System.debug('Account Number :' +acc.AccountNumber);        
    }

    public static void soqlDemo_Filter() {    
        string accNameFilter = 'Salesforce Inc.';
        List<account> listAcc = [Select id, name from account where name = :accNameFilter];
        system.debug('acc =' + listAcc);
    }
    
}