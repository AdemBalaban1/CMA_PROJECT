trigger AccountTrigger on Account (before insert) {
    if (trigger.isBefore && trigger.isInsert) {
        AccountTriggerHandler.createAccounts(trigger.new);
    }
}