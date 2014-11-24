public class NewsComponentController {
	@AuraEnabled
    public static List<News> getNews() {
        System.debug('getNews Called');
        String response = getRestResponse('http://api.feedzilla.com/v1/articles/search.json?q=Salesforce&count=5');
        
		NewsFeed feed = (NewsFeed)JSON.deserialize(response,NewsFeed.class);
        
        List<News> articles = feed.articles;
        
        System.debug('THESE ARE THE ARTICLES');
        System.debug(articles[0].title);
        
        return articles;
    }
    
	@AuraEnabled
	public static String getRestResponse(String url) {

        // Instantiate a new http object
        Http http = new Http();
    
        // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
        HttpRequest req = new HttpRequest();
        req.setEndpoint(url);
        req.setMethod('GET');
    
        // Send the request, and return a response
        HttpResponse res = http.send(req);
        return res.getBody();
	}
}