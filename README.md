# collegehelper
Alright, so here's the lowdown on my collegehelper package, which was for my R Programming final project!

Overall Introduction of the Package
Basically, I made this R package called collegehelper to make it super easy for us college students to look at our homework scores. It's got some cool functions to crunch numbers and even make graphs, all so we can keep track of how we're doing without a ton of extra work. Plus, it's all set up with R Markdown, so everything's nice and reproducible – no more copying and pasting stuff into Word!

How many unique functions does this package provide?
My package has 3 awesome functions:

hw_mean(): This one's a lifesaver! It calculates the average of your homework scores and automatically ignores any missing ones (like if you didn't turn something in). No more forgetting na.rm = TRUE!
hw_stats(): This function gives you a whole bunch of stats – the mean, standard deviation, and how many scores you actually have. It even has its own special way of printing everything out nicely.
hw_hist(): If you want to see a visual of your scores, this function whips up a histogram for you. Super handy!
How many external libraries or dependencies does the package use?
Good news here! My package only uses one external library: ggplot2. I wanted to keep it super clean and simple, so no crazy long list of dependencies.

What metadata fields are included in the DESCRIPTION file?
Okay, so the DESCRIPTION file is where all the official info about the package goes, right? I made sure it had "all required metadata," as per the assignment. Things like the package name, who made it (that's me, Suv!), the version, a little description, and all that jazz. I didn't list out every single field in the demo, but it's all in there to make it legit!

What license does the package use?
Uh, about the license... I actually didn't explicitly mention it in the demo or the notes I gave you. Probably something I should add, huh? My bad!

Which object systems (S3 vs. S4) and corresponding methods are implemented?
I went with the S3 class system for this project. Specifically, I created an hw_stats class. The coolest part is that I made a custom print.hw_stats() method. That means when you ask to see the stats for your homework, it doesn't just spit out a bunch of raw numbers; it formats them in a clear, easy-to-read way. It makes the output look way more professional!
