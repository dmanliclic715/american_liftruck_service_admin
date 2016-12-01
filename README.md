
# American Liftruck Service: Admin Application
## The Project: My First Client

> Since attaining my newfound dev chops, I was recently asked by my gf's father to overhaul his current admin application. He created his current application with File Maker Pro(FMP) in the early 2000's. He's entrusted me to maintain the integrity of his program's current functionality, all while parsing out inefficiencies. There are definitely a lot of challenges that I'll need address throughout this overhaul, but I'm looking forward to taking them on!

----
## Challenges 
1. Exporting data from FMP database to postgresql
  * I discovered that data from FMP can be exported into CSV, so I'm going to use that to my advantage and hopefully try to import that data into the postgres DB that way. 

2. I need to redesign the database schema 
  * It was initially designed in a way where new tables–instead of new fields on an already existing table–were added at as a per need basis. Eventually the database grew to be a web of unnecessary tables that could be condensed.(See below)

![Database_Rel.png](https://s17.postimg.org/9rj6ryr33/Database_Rel.png)](https://postimg.org/image/s73npd57f/)

3. Dabbling into a new tech: ActiveAdmin
  * I knew I didn't have to reinvent the wheel because I was sure there were gems out there that could give me a good foundation to work from. After deliberating between a few, I'm going with ActiveAdmin–for now at least. 


