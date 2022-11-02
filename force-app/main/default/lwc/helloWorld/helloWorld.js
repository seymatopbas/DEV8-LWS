import LocaleSidKey from '@salesforce/schema/User.LocaleSidKey';
import { LightningElement } from 'lwc';

export default class HelloWorld extends LightningElement {
    name; //undefined
    fullname = 'Salesforce Developer';
    age = 30;
    location={
        city: "Lodi",
        country: "United States",
        postalCode: "07644"
    }; //object type
    fruits = ["Orange", "Banana","Apple"]; //array type
}