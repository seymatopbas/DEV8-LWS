public class airlineTicket {
    
    public string departureCity;
    public string arrivalCity;
    public string flightNumber;
    public string seatNumber;

    public void printTicket(){
        system.debug('This ticket is for the journey from '+departureCity+ 
        'to' +arrivalCity+'. Your Flight Number is' +flightNumber+' and Seat Number is'
        +seatNumber );
    }

}