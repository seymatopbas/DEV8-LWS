import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import OPPORTUNITY_OBJECT from '@salesforce/schema/Opportunity';

export default class GetOpportunityObjectInfo extends LightningElement {
    
    rtId;
    @wire(getObjectInfo,{objectApiName:OPPORTUNITY_OBJECT})
    objectHandler({data,error}){
        if(data){
            console.log(data);
            this.rtId = data.defaultRecordTypeId;
        }
        if(error){
            console.log(error);
        }
    }

}