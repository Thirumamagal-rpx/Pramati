# Ruby
```
A dynamic, open source programming language with a focus on simplicity and productivity. It has an elegant syntax that is natural to read and easy to write.
```

# Why Ruby?

- Easy to learn
- Open source
- Less coding with fewer bugs

# Embedded Ruby
```
ERB allows you to put Ruby codes inside an HTML file.
```

If you want Ruby code executed, enclose it between <% and %>.

# What is Rails?

- An extremely productive web-application framework.
- An open source Ruby framework for developing database-backed web applications.

# Installation:  
```
1. Check Ruby Version
   - ruby -v
   - gem --version

If you don't get an error, skip Install Ruby step.Otherwise,Install Ruby.

2. Install Ruby
   - https://rubyinstaller.org/

3. Install Rails
   - In command prompt use gem install rails command.
   - Rails and its dependencies will be installed.

4. Check Rails version
   - rails -v
```
# Starting server
```- use command rails server in the command prompt
   - open browser and type http://localhost:3000
   - message of "welcome to rails" will be displayed.
```
Postgres database:
```
Ex: rails new myapp -d= corridor_development
rake db: create

#Configuring database.yml
```
Example:

development: 
  adapter: postgresql
  encoding: unicode
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  username: "postgres"
  password: "postgres"
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  
  database: Corridorr_development
  
  
test: 
  adapter: postgresql
  encoding: unicode
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  username: "postgres"
  password: "postgres"
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  
  database: Corridorr_test
  
  
production: 
  adapter: postgresql
  encoding: unicode
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  username: "postgres"
  password: "postgres"
  pool: "<%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>"
  
  database: Corridorr_production

```

``
#features:

#Active Record

- Saves objects into the database.

#Scaffolding

- Temporary code in the early stages of development to help get an application up quickly and see how major components work together

#Three environments

- Three default environments: 

- development, testing, and production.

#Framework:
```
```
- A framework is a program, set of programs, and/or code library that writes most of your application for you. When you use a framework, your job is to write the parts of the application that make it do the specific things you want.

-Ruby on Rails deals with a Model/View/Controller (MVC) framework.
```

##Model (ActiveRecord )
```
- It maintains the relationship between the objects and the database and handles validation, association, transactions, and more.

```
##View ( ActionView )
```
- It is a presentation of data in a particular format, triggered by a controller's decision to present the data. 
- Every Web connection to a Rails application results in the displaying of a view.
```
##Controller ( ActionController )
```
- Organizing that data (searching, sorting, messaging it) into a form that fits the needs of a given view.
- This subsystem is implemented in ActionController, which is a data broker sitting between ActiveRecord (the database interface) and ActionView (the presentation engine).
```
```

#Active Record
```

- Rails Active Record is the Object/Relational Mapping (ORM) layer supplied with Rails.

- Each Active Record object has CRUD (Create, Read, Update, and Delete) methods for database access

#Command:
rails g model Book
rails g model Subject

#Naming conventions:
-Database-table-plural
-Model class-Singular

```
#Creating Associations between Models
```
- one-to-one   - A one-to-one relationship exists when one item has exactly one of another item
- one-to-many	-A one-to-many relationship exists when a single object can be a member of many other objects
- many-to-many	-A many-to-many relationship exists when the first object is related to one or more of a second object, and the second object is related to one or many of the first object.


- Now, you need to tell Rails what relationships you want to establish within the library data system.

- modify book.rb and subject.rb

class Book < ActiveRecord::Base
   belongs_to :subject
end

class Subject < ActiveRecord::Base
   has_many :books
end
```
# Migrations
- Rails Migration allows you to use Ruby to define changes to your database schema

```
#Creating Migrations
```
Command:
- rails generate migration books
- rails generate migration subjects

-- use lower case for book and subject 
-- plural form while creating migrations

#Run Migaration:

Command:

- rails db:migrate

#specify what Rails environment to use for the migration
- rails db:migrate RAILS_ENV = development


```
```

# Controllers
```
Command:

rails g controller Book

- The Rails controller is the logical center of your application. - It coordinates the interaction between the user, the views, and the model. 

- When your application receives a request, the routing will determine which controller and action to run, then Rails creates an instance of that controller and runs the method with the same name as the action.


```