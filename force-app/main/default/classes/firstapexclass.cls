public class firstapexclass {
    
    public void method1(){
        
        Set<STring> setofdays = new set<String>();
        List<String> days = new  List<String>();
        days.add('sunday');
        Days.add('Monday');
        days.add('Tuesday');
        days.add('Tuesday');
        system.debug(days);
        /*integer x =0;
while(x <days.size()){
system.debug(days[x]);
x++;
}*/
        for (String s:days){
            
            system.debug(s);
            setofdays.add(s);
        }
        system.debug(setofdays);
        
        
        
    }
    
    
    public void method2(){
        Map<Integer,String> mapofdays = new map<Integer,String>();
        mapofdays.put(5,'Thursday');
        mapofdays.put(6,'Friday');
        system.debug(mapofdays);
        system.debug(mapofdays.get(5));
        
        for (Integer k:mapofdays.keyset()){
            system.debug(k);
            system.debug(mapofdays.get(k));
            
        }
        
        for (String k:mapofdays.values()){
            system.debug(k);
            
        }
        
        
    }
    
}