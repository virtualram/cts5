global class batchapex1 implements Database.Batchable<sObject>
{
    global Database.QueryLocator start(Database.BatchableContext BC)
    {
        String query = 'SELECT Id, description,active__c FROM account';
        return Database.getQueryLocator(query);
    }
 
    global void execute(Database.BatchableContext BC, List<account> scope)
    {
         for(account a : scope)
         {
            a.rating ='Warm';     
         }
         update scope;
    }  
    global void finish(Database.BatchableContext BC)
    {
    }
}