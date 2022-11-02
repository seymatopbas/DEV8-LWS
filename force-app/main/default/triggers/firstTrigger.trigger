trigger firstTrigger on Account (before insert, after insert) {

    if (Trigger.isBefore && Trigger.isInsert){
        system.debug('Display values on Before insert : ' +Trigger.New);
    }
    
    if (Trigger.isAfter && Trigger.isInsert){
        system.debug('Display values on After insert : ' +Trigger.New);
    }
    
    if (Trigger.isBefore && Trigger.isUpdate){
        system.debug('Old Values: ' +Trigger.Old);
        system.debug('New Values: ' +Trigger.New);
    }
}