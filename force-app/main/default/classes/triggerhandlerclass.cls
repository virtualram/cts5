public class triggerhandlerclass {
    
   public static void beforeupdate(list<account> triggernew ,map<id,account> triggeroldmap){
        for (Account a:triggernew){
            
            if (triggeroldmap.get(a.Id).name =='HDFC Ltd' &&  triggeroldmap.get(a.Id).name <> a.name){
               if (!test.isRunningTest())
                a.adderror('cannot change account name hdfc');
            }
        }
    }
    public static void beforeinsert(list<account> triggernew){
    if (trigger.isbefore && trigger.isinsert){
        for (Account a:triggernew){
            
            
            a.description ='REcord update from trigger';
        }
    }
    
    
    
    
    }
    
    public static void beforedelete(list<account> triggerold,map<id,account> triggeroldmap){
           
        List<contact> contlist = new list<contact>([select id,accountid from contact where accountid in :triggeroldmap.keyset()]);
        
        for (Account a:triggerold){
            
            ///
            if (a.name== 'HDFC Ltd')
                a.adderror('cannot delete account name hdfc');
            integer x =0;
           
            for (contact c:contlist){
                if(x == 1 & c.accountid == a.id){
                    a.adderror('more than one contact');
                    x=0;
                }
                if (c.accountid == a.id)
                    x++;                
                }}
    }
    
      
    public static void  afterinsert(List<Account> triggernew)
    {
        List<contact> contlist = new list<contact>();
        Contact con;
        for (account a:triggernew){
            
            con =new contact();
            con.lastname = a.name +'fromtrigger' ;
            con.accountid =a.id;
            contlist.add(con);
        }
        insert contlist;
    }
    
    

}