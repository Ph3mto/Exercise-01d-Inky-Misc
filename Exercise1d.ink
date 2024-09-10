/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/

/* 
11 total loops, time variable updated each click, total classes attended variable given at end.
*/

VAR time = -1 //  0 Morning, 1 Noon, 2 Night
VAR attendedClasses = 1

-> school

== school ==
You arrive at school. 

It is {advance_time() } 

 + [Go to class] ->class1

 -> DONE

== class1 ==
You arrive at your class and snooze through the 45 minutes. 

+ [Go to your next class] ->class2
+ [Go skip in the parking lot] ->parkinglot

== class2 ==
~ attendedClasses = attendedClasses + 1
You attend your next class.
It is { advance_time() } 
 +[Go to your next class] -> class3
 + [Go skip in the parking lot] ->parkinglot3rdperiod
 
== parkinglot ==
You smoke a bowl and blast music for the next 50 minutes. 
It is { advance_time() } 
*[Continue skipping]  -> parkinglot3rdperiod
*[Go back to class] -> class3

== class3 ==
~ attendedClasses = attendedClasses + 1
You attend your next class.
It is { advance_time() } 
 +[Go to your next class] -> class4
 +[Go skip in the parking lot] -> parkinglot4thperiod

== parkinglot3rdperiod ==
You leave school and get food with your partner.
It is { advance_time() } 
+[Go to your next class] -> class4
+[Keep skipping class] -> parkinglot4thperiod



== class4 ==
~ attendedClasses = attendedClasses + 1
History class. Your favorite.
It is { advance_time() } 
 +[Go to your next class] -> class5
 +[Go skip last period in your car.] ->parkinglot5thperiod

==parkinglot4thperiod ==
You hang with some friends and blast music for the period. 
It is { advance_time() } 
 +[Go to your next class] -> class5
 +[Continue skipping.] ->parkinglot5thperiod

== class5 ==
~ attendedClasses = attendedClasses + 1
You end the day with physics. It's exhuasting. 
It is { advance_time() } 
+[Go home] -> home
== parkinglot5thperiod ==
You spend the last period smoking with your friends before leaving early for the day
It is { advance_time() } 
+[Go home] -> home

== home ==
You attended {attendedClasses} classes today. 
+[Next day] ->school
== function advance_time ==

    ~ time = time + 1
    
    {
        - time >= 5:
            ~ time = 0
    }    
    
    {    
        - time == 0:
            ~ return "1st period"
        
        - time == 1:
            ~ return "2nd period"
        
        - time == 2:
            ~ return "3rd period"
        - time == 3:
            ~ return "4th period"
        - time == 4:
            ~ return "5th period"
    
    }
    
    
        
    ~ return time
    
    
    
