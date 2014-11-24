The Salesforce Lightning Component Framework is the next-generation component based development framework for Salesforce. It's based on the Aura open source library, and uses a mixture of Javascript on the client and Apex on the Server. This is a simple tutorial for creating a Lightning App that displays headline news about Salesforce Lightning from the [FeedZilla Newsfeed API](http://www.feedzilla.com/api-overview). 

Read about it here: [http://www.mobileandemerging.technology/a-simple-salesforce-lightning-news-app/](http://www.mobileandemerging.technology/a-simple-salesforce-lightning-news-app/)

When complete, it looks like this when running from within Salesforce1:

{<1>}![Lightning in S1](https://metforceweb.s3.amazonaws.com/2014/Nov/IMG_2205-1416811679075.PNG)

And it looks like this when running as a standalone app:

{<2>}![Lightning News App Example](https://metforceweb.s3.amazonaws.com/2014/Nov/Aura-1416809127181.png)

You should note that all of the source contained within is namespaced with "lightningtom". This is currently a requirement of using the Lightning Component Framework, and since you'll be using an org with a different namespace, you'll want to find/replace any instances of "lightningtom" with your org's namespace. If you're confused, check this link to learn more about [registering a namespace prefix](https://help.salesforce.com/HTViewHelpDoc?id=register_namespace_prefix.htm&language=en_US).
