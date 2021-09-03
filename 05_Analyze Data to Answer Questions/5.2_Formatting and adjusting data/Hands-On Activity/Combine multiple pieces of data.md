# Hands-On Activity: Combine multiple pieces of data


## 1. Question 1

Activity overview

In previous activities, you gained experience using spreadsheet functions for manipulating and cleaning data. In this activity, you’ll use the CONCAT and CONCATENATE functions to help you quickly and efficiently combine multiple pieces of raw data into new data.

By the time you complete this activity, you will be able to use these functions to combine data. This will enable you to simplify and condense data, which is important for processing and cleaning data in your career as a data analyst.


What you will need
To get started, you will need the CONCAT function exercise spreadsheet.

To use the template for the spreadsheet, click the link below and select “Use Template.” 

Link to template: [Dataset-for-Project_-CONCAT-function.xlsx](https://github.com/plnh/Google-Data-Analytics/blob/main/05_Analyze%20Data%20to%20Answer%20Questions/5.2_Formatting%20and%20adjusting%20data/Hands-On%20Activity/Dataset-for-Project_-CONCAT-function.xlsx)


**Using the CONCAT and CONCATENATE functions**

Occasionally, you will encounter a dataset with data values in separate cells that you want to combine as a single value in a single cell. This is common when dealing with names and dates. The dataset may have separate columns for first names and last names, but you may want a column with the full names. 

City/state and month/year combinations are also often desirable to have together, as they are likely to be recorded together. 

The CONCAT function in spreadsheets can combine these kinds of data.

Combining data from two cells

First, using the spreadsheet you downloaded, you’ll combine the two sets of names in columns First Name and Last Name in a new column called Full Name. 

To do this, follow these steps:

**1. Click on cell F2. This is where you start the data for the new column. After you click on the cell, type =CONCAT(A2,B2) into the function bar and hit Enter (Windows) or Return (Mac). **

You have merged or, technically, concatenated the two data values from cells A2 and B2. Because you listed A2 first in the CONCAT function argument, it comes first in the final result.

Notice that the two names were combined without a space between them. 

If you want to put the space in between, you need to use the full CONCATENATE function, which allows you to combine multiple strings. 

**2. Click again on the cell F2. In the function call, place a space in quotes between A2 and B2 separated by commas.**

Now there is a space between the first name and the last name.

**Next, repeat this process for all the remaining cells in Column F. Of course, you don't want to do this manually for each cell. (Especially if the dataset were larger, it would be laborious to do this cell-by-cell.) Luckily, you can fill out the data in the column by using your mouse.**

**1. Click on the cell F2. Locate the small square in the lower-right corner of the highlighted boundary of the cell.**


**2. Click on this square, drag your mouse to the bottom of the column, and release. All the cells in the column should populate with the full name of the appropriate president.** 


Note: While it does not happen in this dataset, you may have extra spaces in your result after you CONCAT. If you notice you have extra spaces, you can use the TRIM function to remove them.
Combining data from three cells

The procedure for combining three pieces of data from different cells is almost identical to what you just did. The only difference is that you include a third cell in the full CONCATENATE argument.

## Now, combine the month, day, and year into a single data value: Date. This will occupy column G. 

**1. Click on the cell where you would like the new data to start. Here, this is cell G2. **

**2. Enter the CONCAT command as =CONCATENATE(C2," ",D2,", ",E2)**


Pay particular attention to the extra strings you added between the month and the day, and between the day and the year. This is how you get the spaces and comma in your final result.


**3. Fill out the rest of the column using the same click-and-drag technique as before. Your screen should appear like this:**

