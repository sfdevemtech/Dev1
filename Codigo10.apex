public class TheController{

      String searchText;
       List<Lead> results;

        public String getSearchText(){
               return searchText;
}

public void setSearchText(String s){
       searchText = s;
}

public List<Lead> results {get;}

public PageReference doSearch(){
       results = [SELECT ID, Name, Email
                              FROM Lead
                              WHERE searchText =; searchText]:
        return null;
  }
}
