public class extension1 {
    public list<account> acclist = new list<account>();
    apexpages.StandardController localaps;
    Account acc;
    public extension1(apexpages.StandardController aps){
        //constructor gets injected with standard controller dependency,so that extension
        //controller knows what record context standard controller has
        localaps = aps;
        acc = (account)aps.getRecord();
    }
    
    public list<account> getacclist(){
                system.debug(acc.Id);
        return [select id,rating,type ,name,industry from account where createddate = today];

    }

}