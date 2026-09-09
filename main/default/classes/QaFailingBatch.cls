public with sharing class QaFailingBatch implements Database.Batchable<SObject> {
         public Database.QueryLocator start(Database.BatchableContext bc) {
            return Database.getQueryLocator('SELECT Id FROM User LIMIT 1');
          }
         public void execute(Database.BatchableContext bc, List<SObject> scope) {
              insert new Account(); // unhandled DmlException -> localized label
          }
         public void finish(Database.BatchableContext bc) {}
      }