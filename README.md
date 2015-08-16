# rails-blog
A simple blog application built using Ruby on Rails framework.

### Features:
* Authentication with Social Sites (Facebook, LinkedIn, Google and Twitter)
* CRUD(Create, Read, Update & Delete) functionality:
  * Articles

#### Requirements:   
Ruby 2.2.2p95   
Rails 4.1.4   
MySQL 5.5

#### Installation:   
$ git clone --depth=1 https://github.com/sudogem/rails-blog.git    
$ cd rails-blog/    
$ bundle install    
$ bundle exec rake db:create db:migrate # it will create a mysql db and then execute the migration scripts.    
$ rails server -p 3001    
NOTE: By default, the default server is WEBrick. You can change it with different rails server such as Thin server.    

#### Technology stacks:
* Ruby/Rails    
* MaterialCSS    
* HAML Templating    
* MySQL    

#### Gems used:
* omniauth-oauth2
* omniauth-facebook
* omniauth-google-oauth2
* omniauth-linkedin-oauth2
* omniauth-twitter
* haml
* Sass-rails
* mysql2
* rails 4
* jquery-rails

#### Developer
rails-blog &copy; 2015 Arman Ortega. Released under the MIT License.     