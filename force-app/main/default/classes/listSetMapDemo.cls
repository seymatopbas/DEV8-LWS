public class listSetMapDemo {

    public void demoList() {

        List<Integer> countOfTen = new List<Integer>();
        countOfTen.add(10);
        countOfTen.add(20);
        countOfTen.add(30);
        countOfTen.add(40);
        countOfTen.add(50);
        system.debug('Display countOfTen: '+countOfTen);
        //Get the value based on Index
        system.debug('Get the Value: '+countOfTen.get(3)); 
    }

}