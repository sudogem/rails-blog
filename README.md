# rails-blog
A simple blog application built using Ruby on Rails framework.

### Features:
* Authentication with Social Sites (Facebook, LinkedIn, Google and Twitter)
* CRUD(Create, Read, Update & Delete) functionality:
  * Articles

#### Requirements:   
Ruby 2.2.2p95 (it works on Ruby 2.0.0)   
Rails 4.2.0   
MySQL 5.5   

#### Installation:   
$ git clone --depth=1 https://github.com/sudogem/rails-blog.git    
$ cd rails-blog/    
$ bundle install    
$ bundle exec rake db:create db:migrate # it will create a mysql db and then execute the migration scripts.    
$ rails server -p 3001    

NOTE: By default, the default server is WEBrick. You can change it with different rails server such as Thin server.    
Make sure that you installed the following requirements such as the rubyinstaller, the gems like rails and bundler.
For production:    
$ bundle exec rake db:create db:migrate RAILS_ENV=production     
$ bundle exec rake assets:precompile RAILS_ENV=production   

#### Technology stacks:
* Ruby/Rails (http://rubyonrails.org)    
* MaterialCSS (http://materializecss.com)    
* HAML Templating (http://haml.info)    
* MySQL (http://mysql.com)    

#### Gems used:
* omniauth-oauth2 (https://github.com/intridea/omniauth-oauth2)    
* omniauth-facebook (https://github.com/mkdynamic/omniauth-facebook)    
* omniauth-google-oauth2 (https://github.com/zquestz/omniauth-google-oauth2)    
* omniauth-linkedin-oauth2 (https://github.com/decioferreira/omniauth-linkedin-oauth2)    
* omniauth-twitter (https://github.com/arunagw/omniauth-twitter)    
* haml (http://haml.info)    
* Sass-rails (https://github.com/rails/sass-rails)    
* mysql2 (http://github.com/brianmario/mysql2)    
* rails 4 (http://rubyonrails.org)    
* jquery-rails (https://github.com/rails/jquery-rails)    

#### Developer
rails-blog &copy; 2015 Arman Ortega. Released under the MIT License.     
