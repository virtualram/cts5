import { LightningElement ,track} from 'lwc';

export default class Parent extends LightningElement {

    @track msg; 
    handleChangeEvent(event){
        console.log('inside');
    this.template.querySelector('c-chilld').changeMessage(event.target.value);
    }
   handleCustomEvent(event) {   
          const textVal = event.detail; 
        console.log('hanldcustomevent parent'+event.detail);
             this.msg = textVal;  }
  handleClick(e){

 }

}