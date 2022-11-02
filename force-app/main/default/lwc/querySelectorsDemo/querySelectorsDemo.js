import { LightningElement } from 'lwc';

export default class QuerySelectorsDemo extends LightningElement {
    fruits = ["Banana", "Orange", "Apple", "Mango"];

    clickHandler() {
        //querySelector demo
        const elem = this.template.querySelector('h1');
        console.log(elem.innerText);
        elem.style.backgroundColor = "pink";
        elem.style.border = "2px solid red";
        elem.style.marginBottom = "3px";

        //querySelectorAll demo
        const elems = this.template.querySelectorAll('.child');
        elems.forEach(item => {
            console.log(item.innerText);
            item.style.color = "red";
            item.style.backgroundColor = "yellow";
            item.setAttribute("class", "slds-align_absolute-center");
            item.style.border = "2px solid green";
            item.style.marginBottom ="3px";
        });

        //lightning button
        const elembutton = this.template.querySelector('lightning-button');
        elembutton.setAttribute("variant", "brand");
    }
}