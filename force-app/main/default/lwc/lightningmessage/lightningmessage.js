
    import { LightningElement, wire } from "lwc";
    import {
        subscribe,
        unsubscribe,
        MessageContext
      } from "lightning/messageService";

    //1. Importing the named imports 
    //[library to publish data and the message channel]
    
    import { publish} from "lightning/messageService";
    import msgchannel from "@salesforce/messageChannel/channel__c";
    

export default class Lightningmessage extends LightningElement {


   
      //2. Wiring the MessageContext to a property
      @wire(MessageContext)
      messageContext;
    
      //3. Handling the user input.
      //which in our case is going to be a button click
      handleClick() {
        const messaage = {
         msg:"welcome to LMS"
        };
    
        //4. Publishing the message
        publish(this.messageContext, msgchannel, messaage);
      }



      //subscribe part

    
    
      receivedMessage;
      subscription = null;
      //3. Handling the user input
      handleSubscribe() {
        console.log("in handle subscribe");
        if (this.subscription) {
          return;
        }
    
        //4. Subscribing to the message channel
        this.subscription = subscribe(
          this.messageContext,
          msgchannel,
          (message) => {
            this.handleMessage(message);
          }
        );
      }
    
      handleMessage(message) {
        this.receivedMessage = message  ? JSON.stringify(message, null, "\t") : "no message";
      }
    
      handleUnsubscribe() {
        console.log("in handle unsubscribe");
    
        unsubscribe(this.subscription);
        this.subscription = null;
      }
    
      handleClear() {
        this.receivedMessage = null;
      }
    }
    

