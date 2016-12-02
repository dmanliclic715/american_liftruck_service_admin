
# American Liftruck Service: Admin Application
> Ruby Version: ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin14]
>Rails Version: Rails 5.0.0.1
## The Project: My First Client
> Ruby Version: ruby 2.3.0p0 (2015-12-25 revision 53290) [x86_64-darwin14]
Rails Version: Rails 5.0.0.1

> Since attaining my newfound dev chops, I was recently asked by my gf's father to overhaul his current admin application. He created his current application with File Maker Pro(FMP) in the early 2000's. He's entrusted me to maintain the integrity of his program's current functionality, all while parsing out inefficiencies. There are definitely a lot of challenges that I'll need address throughout this overhaul, but I'm looking forward to taking them on!

----
## Challenges 
1. Exporting data from FMP database to postgresql
  * I discovered that data from FMP can be exported into CSV, so I'm going to use that to my advantage and hopefully try to import that data into the postgres DB that way. 

2. I need to redesign the database schema 
  * It was initially designed in a way where new tables–instead of new fields on an already existing table–were added at a per need basis. Eventually the database grew to be a web of unnecessary tables that could be condensed. I'm currently working on condensing the tables of the database to be more manageable.(See below)

[![Database_Rel.png](https://s18.postimg.org/ahgoiynx5/Database_Rel.png)](https://postimg.org/image/8cwbhvmad/)

3. Dabbling into a new tech: ActiveAdmin
  * I knew it was not necessary to reinvent the wheel because I was sure there were gems out there that could give me a good foundation to develop the application. After deliberating between a few gems(ActiveAdmin,Rails Admin, and Administrate), I'll be utlizing ActiveAdmin. I went with this gem because it has much of the functionality required by the application already built in and has been much more supported by the community. What I don't like about this gem in contrast to others is the necessity to learn the DSL(domain specific language) utilized to configure the application.

