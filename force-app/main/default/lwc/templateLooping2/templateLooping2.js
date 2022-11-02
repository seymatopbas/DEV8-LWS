import { LightningElement } from 'lwc';

export default class TemplateLooping2 extends LightningElement {
    contacts= [
        {name: 'Ayse', role: 'Salesforce Consultant'},
        {name: 'Fatma', role: 'Salesforce Architect'},
        {name: 'Ahmet', role: 'Salesforce Lead'}
    ];
}