import { getObjectInfo } from 'lightning/uiObjectInfoApi';
import { LightningElement, wire } from 'lwc';

import ACCOUNT_OBJECT from '@salesforce/schema/Account';


export default class GetRecordTypeInfos extends LightningElement {

    individualRrId;
    @wire(getObjectInfo,{objectApiName:ACCOUNT_OBJECT})
    objectHandler({data,error}){

        if(data){
            console.log(data);
            const rtIds = data.recordTypeInfos;
            this.individualRrId = Object.keys(rtIds).find(rtId=>rtIds[rtId].name=='Individual');
        }
        if(error){
            console.log(error);
            
        }

        

    }

}