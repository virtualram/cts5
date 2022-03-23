global class soapapiaccoint {

    webservice static String makeacc(String name, String rating,Integer annualrevenue,  String active){
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
    
 
}