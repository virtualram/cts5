@restresource(urlmapping='/Accountapi/*')
global with sharing class restapi1 {
   @httppost
    global static String makeacc(String name, String rating,Integer annualrevenue,  String active){
        try{
        account acc = new account();
        acc.name = name;
        acc.rating = rating;
        acc.AnnualRevenue = annualrevenue;
        acc.active__c = active;
        insert acc   ;
            return acc.name;
        }    catch(exception e){
            return e.getMessage();
        }
        
    }                 
    
    
 @httpget
global static Account getacc(){
restrequest req = restcontext.request;
    restresponse res = restcontext.response;
    String accid;
    accid =req.requestURI.substring(req.requestURI.lastindexof('/')+1);
    return [select id,name from account where id =:accid];
}

}