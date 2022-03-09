public with sharing class RequestsController {
    @AuraEnabled
    public static Request__c saveRequest(Request__c req) {
        // Perform isUpdateable() checking first, then
        upsert req;
        return req;
    }
}