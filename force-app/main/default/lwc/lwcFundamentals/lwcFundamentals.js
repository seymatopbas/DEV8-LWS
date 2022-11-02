import { LightningElement, track } from 'lwc';

export default class LwcFundamentals extends LightningElement {    
        
         mame = "Seyma Topbas";
         age = 34;


        handleChange1(event){
            this.name = event.target.value;        
        }
        handleChange2(event){
            this.age = event.target.value;
        }

}