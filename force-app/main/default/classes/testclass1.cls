@istest public class testclass1 {
    public static account acc;
    
    @testsetup static void createdata(){
        
        acc = new account();
        acc.name ='HDFC Ltd';
        insert acc;
        acc.name = 'test';
        update acc;
        system.assert(acc.name == 'test','wrong value');
        delete acc;
         
    }
    
    testmethod static void test1(){
        
        accountcontroller ac = new accountcontroller();
        ac.acc = acc;
        ac.save1();
        ac.getacclist();
    }
}