trigger eventrig on testevent__e (after insert) {
for (testevent__e a:trigger.new){
   system.debug(a);

}}