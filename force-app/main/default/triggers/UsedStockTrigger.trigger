trigger UsedStockTrigger on Available_Stock__c (after update) {
    /*
    if(Trigger.isAfter){
        if(Trigger.isUpdate){
            UsedStockHandler.getAvailableStock(trigger.new, trigger.oldMap);
        }
        
    }
*/
    
    if (Trigger.isAfter) {
        if (Trigger.isInsert) {
            UsedStockHandler.handleAfter(Trigger.new, null);
        }
        if (Trigger.isUpdate) {
            UsedStockHandler.handleAfter(Trigger.new, Trigger.oldMap);
        }
    }
}