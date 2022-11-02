trigger AccountPracticeTrigger on Account (before insert) {
   
    //NO DML Inside before Triggers 
    //Scenario 1   
    if(Trigger.isBefore && Trigger.isInsert){        
        AccountPracticeTriggerHandler.fillShippingDetails(Trigger.New);            
    }

}