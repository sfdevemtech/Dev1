trigger AccountTrigger on Account (before insert, after insert, after update) {
    if(trigger.isAfter) {
         if(trigger.isInsert){
            AccountTriggerHandler.afterInsertHandler (trigger.new,
                                                        trigger.old,
                                                        trigger.oldmap,
                                                        trigger.newmap,
                                                        trigger.open);
         }
    }
}
