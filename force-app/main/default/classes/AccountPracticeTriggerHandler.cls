public class AccountPracticeTriggerHandler {
    
    //Scenario 1
    public static void fillShippingDetails(List<Account> accList){
        for(Account acc : accList){
            if(acc.ShippingStreet == NULL){
                acc.ShippingStreet = acc.BillingStreet;
            }
            if(acc.ShippingCity == NULL){
                acc.ShippingCity = acc.BillingCity;
            }
            if(acc.ShippingState == NULL){
                acc.ShippingState = acc.BillingState;
            }
            if(acc.ShippingPostalCode == NULL){
                acc.ShippingPostalCode = acc.BillingPostalCode;
            }
            if(acc.ShippingCountry == NULL){
                acc.ShippingCountry = acc.BillingCountry;
            }
        }    
    }
}