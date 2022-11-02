public with sharing class AccountCtrl {
    
    @AuraEnabled(cacheable=true)
    public static List<Account> getTopAccounts() {
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE AnnualRevenue != NULL
                WITH SECURITY_ENFORCED
                ORDER BY AnnualRevenue DESC
                LIMIT 5];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAccountsByIndustry(String industry) {
        return [SELECT Name, Type, Industry, AnnualRevenue
                FROM Account
                WHERE Industry = :industry
                ORDER BY Name
                LIMIT 5];
    }


    @AuraEnabled
    public static List<Contact> searchContacts(String searchKey) {
        searchKey = '%' + searchKey + '%';
        return [SELECT FirstName, LastName, Title, Department
                    FROM Contact
                    WHERE FirstName LIKE :searchKey
                    OR LastName LIKE :searchKey
                    WITH SECURITY_ENFORCED];
        }
    
    
    //get all the accounts whose name contains the given search key
    @AuraEnabled
    public static List<Account> searchAccounts(String searchKey) { //est
        searchKey = '%' + searchKey + '%'; // %est%
        return [SELECT Id, Name, Type, Industry, AnnualRevenue, AccountNumber
                FROM Account
                WHERE Name LIKE :searchKey
                WITH SECURITY_ENFORCED];
    }

    @AuraEnabled(cacheable=true)
    public static List<Account> getAllAccounts() {
        return [SELECT Id, Name FROM Account WITH SECURITY_ENFORCED ORDER BY Name];
    }

    @AuraEnabled
    public static Integer countContacts(Id accId) {
        List<Contact> contacts = [SELECT Id FROM Contact WHERE AccountId = :accId WITH SECURITY_ENFORCED];
        return contacts.size();
    }


    //calculate the total amounts of all opps under the given account
    @AuraEnabled(cacheable=true)
    public static Decimal calculateOppAmount(Id accountId) {
        Decimal total = 0.0;
        for(Opportunity opp : [SELECT Id, Amount FROM Opportunity WHERE AccountId = :accountId]) {
            if(opp.Amount != null) {
                total = total + opp.Amount;
            }            
        }
        return total;
    }

}