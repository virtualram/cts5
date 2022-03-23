trigger Accountrigger on Account (before insert,after insert,before update,after update ,before delete) {
    
        
        if(trigger.isafter && trigger.isinsert)
    {
        triggerhandlerclass.afterinsert(trigger.new);
       
    }
    
    
    
    //we will prevent delete of record with name HDFC LTD
    //
    ////
    if (trigger.isbefore && trigger.isdelete){
           triggerhandlerclass.beforedelete(trigger.old, trigger.oldmap);
     
    }
    
    /////
    //
 
    if (trigger.isbefore && trigger.isupdate){
          triggerhandlerclass.beforeupdate(trigger.new ,trigger.oldmap);
      
    }
    
    if (trigger.isbefore && trigger.isinsert){
        triggerhandlerclass.beforeinsert(trigger.new);
    
    }
    
}