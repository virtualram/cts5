import { LightningElement,api,track ,wire} from 'lwc';

import getaccounts from '@salesforce/apex/Accountlwccontroller.getaccounts';



export default class Lwc1 extends LightningElement {
@api name = 'Naren';
@track email ='';
age =0;
localresult ;
/*
@wire(getaccounts, { })
handleresult(result){
   console.log(JSON.stringify(result.data));
  this.localresult = JSON.stringify(result.data);
}*/
constructor(){
    super();
    console.log('constructor method fired');
}
connectedCallback(){
    console.log('connected callback fire');
}

renderedCallback(){

    console.log('renderred  callback fire');
}


handleit(e){
    if(e.target.name =='name')
      this.name = e.target.value;
      if(e.target.name =='age')
      this.age = e.target.value;
      if(e.target.name =='email')
      this.email = e.target.value;

}
     
method1(event){

    console.log( this.name + this.email +this.age);


    getaccounts({}).
    then(result=>{
        console.log('non wired'+ JSON.stringify(result));
        this.localresult = JSON.stringify(result);
    }).
    catch(error=>{ console.log('non wired'+error); })
    




}



}