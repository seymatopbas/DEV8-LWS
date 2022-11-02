import { LightningElement } from 'lwc';
import LightningConfirm from 'lightning/confirm';

export default class ConfirmComponent extends LightningElement {

    async handleConfirmClick() {
        const result = await LightningConfirm.open({
            message: "Are you sure you want to delete all files?",
            variant: "headerless",
            label: "Are you sure you want to delete all files?"
        });
    
        //Confirm has been closed
    
        //result is true if OK was clicked
        if (result) {
            //go ahead and delete
        } else {
            //do something else 
        }
    }

    onDeleteAllFilesButtonClick() {
        const confirmation = LightningConfirm("Are you sure you want to delete all files?");
         if (confirmation) {
            //... proceed with
           //... Apex Logic to delete Files.
          //... We will not check this comment.
          }
        }
}