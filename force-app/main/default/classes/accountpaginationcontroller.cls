public class accountpaginationcontroller {
    public list<case> cs2{get;set;}
    public integer x{get;set;}
    public apexpages.StandardSetController stdclocal {get;set;}
    public accountpaginationcontroller(){
    cs2 = new list<case>();
    x=0;
        stdclocal = new  apexpages.StandardSetController(database.getQueryLocator('select casenumber from case'));
        stdclocal.setpagesize(10);
        cs2=stdclocal.getRecords();
    }
    
     public void next(){

         // stdclocal = new  apexpages.StandardSetController(database.getQueryLocator('select casenumber from case limit 3 offset 0'));
             x=x +3;
        // stdclocal.setpagesize(10);
        stdclocal.next();
           cs2=stdclocal.getRecords();
        
    }
}