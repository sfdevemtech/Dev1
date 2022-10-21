public static void dmlDatabaseInsert (){
    List<Account> acctList = new List<Account>();
     acctList.add(new Account(Name='Acmel'));
     acctList.add(new Account(Name='Acme2'));

    Database.SaveResult[] srList = Database.insert(acctList, false);

     for (Database.SaveResult sr : srList) {
         if (sr.isSuccess()) {
            System.debug('successfully inserted account. Account ID: ' + sr.getId());
         }
         else {
            for(Database.Error err : sr.getErrors()) {
                 System.debug('The following error has occurred. ');
                 System debug(err.getStatusCode() + ': ' + err.getMessage());
                 System.debug('Account fields that affected this error: '+ err.getFields());
            }
        }
    }
 }
