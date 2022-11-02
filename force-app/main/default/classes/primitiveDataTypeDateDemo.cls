public class primitiveDataTypeDateDemo {
    public void printDate(){
        Date myDate = Date.newInstance(2000, 8, 7);
        system.debug('Print Date:' +myDate);
    }
    
    public void printTime(){
        Time myTime = Time.newInstance(02, 08, 10, 10);
        system.debug('Print Time:' +myTime);
    }
    
    public void printDateTime(){
        DateTime myDateTime = DateTime.newInstance(2021, 7, 12, 7, 22, 22);
        system.debug('Print Date and Time:' +myDateTime);
    }
}