// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

    function GoogleSearch(){
    OnLoad(document.getElementById("q").value);

    //  var searchControl = new google.search.SearchControl();
     // searchControl.addSearcher(new google.search.WebSearch());
    //alert('hola');
    return false;

    }

    

    function OnLoad(text) {
      google.load("search", "1", {"language" : "pt"});

      // Create a search control
      var searchControl = new google.search.SearchControl();

      // Add in a full set of searchers
      var localSearch = new google.search.LocalSearch();
      //searchControl.addSearcher(localSearch);
      searchControl.addSearcher(new google.search.WebSearch());
      //searchControl.addSearcher(new google.search.VideoSearch());
      //searchControl.addSearcher(new google.search.BlogSearch());
      //searchControl.addSearcher(new google.search.NewsSearch());
      //searchControl.addSearcher(new google.search.ImageSearch());
      //searchControl.addSearcher(new google.search.BookSearch());
      //searchControl.addSearcher(new google.search.PatentSearch());

      // Set the Local Search center point
      localSearch.setCenterPoint("New York, NY");


      searchControl.setResultSetSize(8);

// create a drawOptions object
var drawOptions = new google.search.DrawOptions();

// tell the searcher to draw itself in linear mode
//drawOptions.setDrawMode(google.search.SearchControl.DRAW_MODE_LINEAR);
drawOptions.setDrawMode(google.search.SearchControl.DRAW_MODE_TABBED);
searchControl.draw(document.getElementById("service"), drawOptions);

      // tell the searcher to draw itself and tell it where to attach
      //searchControl.draw(document.getElementById("service"));

      // execute an inital search
      searchControl.execute(text);
  
      google.setOnLoadCallback(OnLoad);
    }

    

