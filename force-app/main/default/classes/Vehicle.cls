virtual public class Vehicle {
    private integer enginehorsepower;
    public vehicle(){
        
    }
    public Vehicle(Integer hp ){
        this.enginehorsepower =  hp;
    }

    
 virtual   public void printit(integer hp){
        
        system.debug('this vehicle horsepower is'+this.enginehorsepower);
    }
}