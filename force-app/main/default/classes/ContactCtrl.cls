public with sharing class ContactCtrl {
    @AuraEnabled
    public static List<Contact> searchContacts(String searchKey) {
        searchKey = '%' + searchKey + '%'; //Balakrishna Ette => ak
        return [SELECT FirstName, LastName, Title, Department
                FROM Contact
                WHERE FirstName LIKE :searchKey
                OR LastName LIKE :searchKey
                WITH SECURITY_ENFORCED];
    }
}