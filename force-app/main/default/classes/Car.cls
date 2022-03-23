public class Car extends vehicle implements interface1{
    // instance members variables and methods,can be accessed by class object only
    private integer brakes;
    private string fueltype;
    private Integer wheels;
    public integer seats;
    private integer hp;
    private static Integer gears;//this can be accessed only by static method
    static{
        
        system.debug('static block ran');
    }
    
    
    public car(){//constructor have same name as class,can't return value
        super(3);
        system.debug('constructor ran');
    }
    
    public car(integer seats,integer wheels){
        //constructor is overloaded,that means same method but different parameters
        super(3);
        this.seats = seats;
        this.wheels = wheels;
        super.printit(23);
        this.printit(45);
        this.addbasic(2,'CNG');
    }
    public void makecar(Integer wheels){
       // this.wheels = wheels;
        system.debug('Wheels' +this.wheels +'seats'+this.seats);
    }
    
    public static void addgears(integer gears1){
        gears =gears1;
        system.debug('gears'+gears);
    }
     override
     public void printit(Integer hp){
        
          this.hp = hp * 2;
          system.debug('Additional hp added'+this.hp);
    }
    public void addbasic(Integer brakes,String fueltype ){
         this.brakes = brakes;
         this.fueltype = fueltype;
        system.debug('brakes' +this.brakes +'Fuel type '+this.fueltype);
    }
    
    
}