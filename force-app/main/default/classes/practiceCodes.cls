public class practiceCodes {

        public static Decimal findLargestInList(List<Decimal> inputList){
            
            Decimal maxCompareValue = inputList[0];
            For (integer i =0;i<inputList.size();i++){            
                if(inputList[i] > maxCompareValue)
                   maxCompareValue = inputList[i];             
            } 
            return maxCompareValue;
        }
}