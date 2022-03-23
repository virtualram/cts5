import { LightningElement ,api} from 'lwc';

export default class Chilld extends LightningElement {
    @api Message;
    @api name;

    @api
    changeMessage(strString) { 
            this.Message = strString.toUpperCase();
    }

     handleChange(event) {      
             event.preventDefault(); 
               this.name = event.target.value;
        console.log('handlechange pchilde'+this.name);
             const selectEvent = new CustomEvent('mycustomevent', {  detail: this.name });  
              this.dispatchEvent(selectEvent); 
        }
}