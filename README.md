# SocialBuzz
 This task is essential because it is one of the specific requirements that the client has asked for, so we are relying on the data analyst to work with the data and create accurate, reliable insights that can be backed up during the final presentation.  
 The next step will be bringing the data set to life. A large component of being a data analyst, includes the ability to find relevant insights and ensure that they are clearly communicated to the business and client. These insights should be synthesized and placed in a presentation for the client that is engaging and easily understood.  
 
## DataSet Summary and Data Model:
User ID: Unique ID of the user (automatically generated)   

Content ID: Unique ID of the content that was uploaded (automatically generated) User ID: Unique ID of a user that exists in the User table and have same value

Content Type: A string detailing the type of content that was uploaded

Category: A string detailing the category that this content is relevant to URL: Link to the location where this content is stored Reaction

Datetime: The date and time of this reaction  

Reaction Type: A string detailing the type of reaction this user gave

Sentiment: A string detailing whether this type of reaction is considered as positive, negative or neutral

Score: This is a number calculated by Social Buzz that quantifies how “popular” each reaction is. A reaction type with a higher score should be considered as a more popular reaction.


## Business task:
An audit company big data practice 

+ Recommendations for a successful IPO  
+ An analysis of their content categories that highlights the top 5 categories with the largest aggregate popularity
+ 
## Tasks to do
+ Extraction of sample data sets  
+ Merging of sample data set tables    
+ Analysis of sample data sets with visualizations
+ Full documentation of the process that we can guide them thro


## Data Analysis and Visualization

Look this Dashboard follow [Tableau](https://public.tableau.com/views/SosialBuzzDashboard_16984171453280/SocialBuzz3?:language=en-US&:display_count=n&:origin=viz_share_link)  

![myimage-alt-tag]([url-to-image](https://github.com/halinakryvanos/SocialBuzz/blob/main/03%20Presentation_/Social%20Buzz%20Dashboard.png)

## Conclusions
The dataset was prepared by merging relevant columns from the Reaction, Content, and Reaction Types datasets using pandas merge operation.  

The dataset contains a comprehensive collection of social media data with 24,573 unique values spanning from June 18, 2020, to June 18, 2021.  

The top 5 performing categories based on the summed scores were identified using pandas' nlargest function.  

The content analysis reveals that photos are the most prevalent type of content, accounting for 26.8% of the total, while audio content is relatively less common, representing 23.0% of the total. The content types in ascending order of prevalence are audio, Gif, video, and photo.  

In terms of reaction types, the "Heart" reaction is the most commonly used by people, followed by "Scared" and "Peeking." On the other hand, reactions such as "Cherish," "Worried," and "Intrigued" are less frequently used.  

The temporal analysis shows that the highest count of social buzz occurred in June 2021, while the lowest count was observed in March 2021. Monthly counts ranged between 1600 and 2000, indicating a relatively consistent level of social media activity. Weekly counts varied between 430 and 500, suggesting regular engagement throughout the analyzed period.  

The category "Animals" has the highest score, indicating a positive sentiment, while "Public speaking" has the lowest score. The top 5 categories with the highest mean scores are "Animals," "Science", "Healthy eating", "Technology", "Food", while the lowest scores are observed in "Studying", "Dogs", "Tennis", "Veganism", "Public speaking".  

## Recommendations  

Was recommend that the client focus on using visually appealing content, especially photographs, to attract the target audience. Additionally, they can explore topics related to animals, science, healthy eating, technology, food which have demonstrated positive sentiments and high grade. By understanding the dynamics of interaction and sentiment on social media, a client can optimize their content strategy and tailor it to suit the preferences of their audience.
