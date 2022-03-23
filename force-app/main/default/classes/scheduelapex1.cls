global class scheduelapex1 implements Schedulable
{
    global void execute(SchedulableContext sc)
    {
        batchapex1 ba  = new batchapex1();
        database.executeBatch(ba);
    }
    
}