public with sharing class MyControllerextension{
    private Account acc;

    public MyControllerExtension(ApexPages.StandardController stdController){
        this.acc = (Account)stdController.getRecord()
    }    
}
