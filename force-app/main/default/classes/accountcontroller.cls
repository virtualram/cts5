public class accountcontroller {
    public list<account> acclist = new list<account>();
    public account acc{get;set;}
    public pagereference pg{get;set;}
    public string name{get;set;}
    
    public accountcontroller(){
        
        acc = new account();
        name ='testvariable';
    }
    
    public pagereference save1(){
        try{
            
            insert acc;
            system.debug(acc.id);
            pg = new pagereference('/'+acc.id);
            return pg;
        }catch (Exception e) {
            system.debug(e.getMessage());
            pg = new pagereference('/');
            
            return pg;
        }   
        
        
    }
    public list<account> getacclist(){
        
        return [select id,rating,type ,name,industry from account where createddate = today];
        
    }
    
}