public class demoPrimitiveDataTypes {
    
    public void displayValues(){
        String favCharacter = 'Rachel';
        Integer Season = 10;
        Boolean isHeCute=True;
        
        system.debug('My favorite Character '+favCharacter);
        system.debug('My favorite Season '+Season);
        system.debug('Is He Cute ? '+isHeCute+ ' Yes He is');  

        Long myLongNum =564887L;
        Double myDoubleNum = 324.55;
        system.debug('Print my long number '+myLongNum);
        system.debug('Print my double number '+myDoubleNum);

        Date mydate = system.today();
        ID mySalesforceID='0018b000020VB0wAAG';
        Object myObj = 123456;

        system.debug('Print my date'+mydate);
        system.debug('Print my ID'+mySalesforceID);
        system.debug('Print the obj'+myObj);
        

        String firstName ='Seyma';
        String lastName = 'Topbas';
        String fullName = firstName+lastName;
        system.debug('FullName :: '+fullName);
        

    }

}