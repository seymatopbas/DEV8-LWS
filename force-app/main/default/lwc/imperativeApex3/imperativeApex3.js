import { LightningElement, wire } from 'lwc';
import getAllAccounts from '@salesforce/apex/AccountCtrl.getAllAccounts';
import countContacts from '@salesforce/apex/AccountCtrl.countContacts';

export default class ImperativeApex3 extends LightningElement {
    selectedAccount;
    accountOptions = [];
    contactsSize;

    @wire(getAllAccounts)
    accountsHandler({data, error}) {
        if(data) {
            console.log(data);
            this.accountOptions = this.picklistGenerator(data);
            console.log(this.accountOptions);
        }
        if(error) {
            console.error(error);
        }
    }

    picklistGenerator(data) {
        return data.map(item => ({
            label: item.Name,
            value: item.Id
        }));
    }

    changeHandler(event) {
        this.selectedAccount = event.target.value;
        countContacts({accId: this.selectedAccount})
            .then(result => {
                console.log(result);
                this.contactsSize = result;
            })
            .catch(error => {
                console.log(error);
            })
    }
}