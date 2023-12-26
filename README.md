# SocialBuzz
 SocialBuzz a platform designed to connect people around. It allows users to create profiles, follow each other, share photos, and engage in discussions with other users.
It has a simple and user-friendly interface that allows users to easily navigate the platform. It will also have various features such as search users, like posts, follow & unfollow and post feeds and customizable user settings.  

I have been given a set of data sets, all containing different columns and values, as well as a data model. A data model shows the relationships between all of the data sets, as well as any links that I can use to merge tables.  

It is my job to use these data sets as well as the data model, to create finished data set that I can use to fulfill the requirements of this task.  


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
+ An analysis of their content categories that highlights the top 5 categories with the largest aggregate popularity.  
+ Recommendations for a successful IPO  
  
## Tasks to do
+ Extraction of sample data sets
+ Data Cleaning
+ Merging of sample data set tables    
+ Analysis of sample data sets with visualizations
+ Full documentation of the process that we can guide them through


## Data Analysis and Visualization

Follow the link to view the interactive Dashboard. [Tableau]([https://public.tableau.com/views/SosialBuzzDashboard_16984171453280/SocialBuzz3?:language=en-US&:display_count=n&:origin=viz_share_link](https://public.tableau.com/app/profile/halina.kryvanos/viz/SosialBuzzDashboard_16984171453280/SocialBuzz)  

![myimage-alt-tag](https://github.com/halinakryvanos/SocialBuzz/blob/main/03%20Presentation_/Social_Buzz_Dashboard..png)
## Conclusions
The dataset was prepared by merging relevant columns from the Reaction, Content, and Reaction Types datasets using pandas merge operation.  

The final dataset contains a comprehensive collection of social media data with 24,573 unique values spanning from June 18, 2020, to June 18, 2021.  

The top 5 performing categories based on the summed scores were identified using pandas' nlargest function.  

The content analysis reveals that photos are the most prevalent type of content, accounting for 22,86% positive reactions, while video content is relatively less common, representing 21,40% positive reactions. The content types in ascending order of prevalence are audio, Gif, video, and photo.  

In terms of reaction types, the "Heart" reaction is the most commonly used by people, followed by "Scared" and "Peeking." On the other hand, reactions such as "Cherish," "Worried," and "Intrigued" are less frequently used.  

The temporal analysis shows that the highest count of social buzz occurred in May 2021, while the lowest count was observed in June 202. Monthly counts ranged between 1900 and 2000, indicating a relatively consistent level of social media activity. Weekly counts varied between 430 and 500, suggesting regular engagement throughout the analyzed period.

The category "Animals" has the highest score, indicating a positive sentiment, while "Public speaking" has the lowest score. The top 5 categories with the highest mean scores are "Animals," "Science", "Healthy eating", "Technology", "Food", while the lowest scores are observed in "Studying", "Dogs", "Tennis", "Veganism", "Public speaking".  

## Recommendations  

Was recommend that the client focus on using visually appealing content, especially photographs, to attract the target audience. Additionally, they can explore topics related to animals, science, healthy eating, technology, food which have demonstrated positive sentiments and high grade. By understanding the dynamics of interaction and sentiment on social media, a client can optimize their content strategy and tailor it to suit the preferences of their audience.
