import { LightningElement } from 'lwc';
import { ShowToastEvent } from 'lightning/platformShowToastEvent';

import CONTACT_OBJECT from '@salesforce/schema/Contact';
import FIRSTNAME_FIELD from '@salesforce/schema/Contact.FirstName';
import LASTNAME_FIELD from '@salesforce/schema/Contact.LastName';
import TITLE_FIELD from '@salesforce/schema/Contact.Title';
import DEP_FIELD from '@salesforce/schema/Contact.Department';
import PHONE_FIELD from '@salesforce/schema/Contact.Phone';
import EMAIL_FIELD from '@salesforce/schema/Contact.Email';

export default class LightningRecordEditFormContact extends LightningElement {

    recordId= "0038b00002hVfW6AAK";
    objectName= CONTACT_OBJECT;
    fields = {
        firstname: FIRSTNAME_FIELD,
        lastname: LASTNAME_FIELD,
        title: TITLE_FIELD,
        department: DEP_FIELD,
        phone: PHONE_FIELD,
        email: EMAIL_FIELD
    };

    successHandler() {
        const successToast = new ShowToastEvent({
            title: "Success",
            message: "Information has been saved successfully!",
            variant: "success"
        });
        this.dispatchEvent(successToast);
    }

}