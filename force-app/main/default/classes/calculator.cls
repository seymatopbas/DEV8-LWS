public class calculator {

    public Integer  a,b; 
    public Integer result;

    /* Integer  a,b; 
    Integer result;
   
    public calculator() {
        a = 50;
        b =10;
    }
    public void add(){
        result = a+b;
        system.debug('Added value: '+ result);
    }
    public void sub(){
        result = a-b;
        system.debug('Sub value: '+ result);
    }
    public void multiple(){
        result = a*b;
        system.debug('Multiply value: '+ result);
    }
    public void division(){
        result = a/b;
        system.debug('Division value: '+ result);
    }  */

    public Integer dynamicCalculationMethod(Integer num1, Integer num2, String operation){
    Integer result;

    if (operation.equalsIgnoreCase('addition')) {
        result = num1 + num2;
    }else if(operation.equalsIgnoreCase('SUBSTRACTION')){
        result = num1 - num2;   
    }else if(operation.equalsIgnoreCase('DIVISION')){
        result = num1 / num2;
    }else if(operation.equalsIgnoreCase('MULTIPLICATION')){
        result = num1 * num2;  
    }
    return result;
}
}