public class runtimeshare {

    public static void shareallaccounts(){
        
       list<account> acclist  = new list<account>();
       list<accountshare> acshare = new list<accountshare>();
       accountshare acs;
        
        acclist = [select id from account];
        for(Account a:acclist){
            acs =new accountshare();
            acs.AccountId = a.id;
            acs.OpportunityAccessLevel ='Edit';
            acs.AccountAccessLevel = 'Edit';
            acs.UserOrGroupId = '0055j0000053LcMAAU';
            acshare .add(acs);
        }
        insert acshare;
    }
}