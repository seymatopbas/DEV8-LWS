import { LightningElement } from 'lwc';

export default class p2cNonPrimitivesParent2 extends LightningElement {
    contacts = [
        {
            FirstName : "Jeff",
            LastName: "Bezos", 
            Title : "Executive Chairman", 
            Department: "Sales"
        },
        {
            FirstName : "Sundar",
            LastName: "Pichai", 
            Title : "Chief Executive Officer", 
            Department: "Chrome"
        },
        {
            FirstName : "Tim",
            LastName: "Cook", 
            Title : "Chief Executive Officer", 
            Department: "Marketing"
        }
    ];
}