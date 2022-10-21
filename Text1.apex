public static void dmlInsert () {
    List<Account> acctList = new List<Account>();
    acctList. add (new Account (Name= 'Acmel'));
    acctList. add (new Account (Name= 'Acme2'));

    insert acctList;
}
