# rails-blog
A simple blog application built using Ruby on Rails framework.

### Features:
* Authentication with Social Sites (Facebook, LinkedIn, Google and Twitter)
* CRUD(Create, Read, Update & Delete) functionality:
  * Articles

#### Requirements
Ruby 2.2.2p95 (it works on the ff: ruby 2.0.0, ruby 2.3.3p222[x64-mingw32], ruby 2.2.2p95[i686-linux] )   
Rails 5.0.x
MySQL 5.5   

#### Install uru (ruby version manager for Windows)
Download uru at https://bitbucket.org/jonforums/uru/wiki/Downloads.   
After you've downloaded uru, you extract it to your local directory C:\    

$ uru list  <-- # will list all available ruby versions   
  215p273     : ruby 2.1.5p273 (2014-11-13 revision 48405) [i386-mingw32]   
  233p222     : ruby 2.3.3p222 (2016-11-21 revision 56859) [x64-mingw32]   
$ uru 233p222   
---> now using ruby 2.3.3-p222 tagged as `233p222`    

#### Installation
$ git clone --depth=1 https://github.com/sudogem/rails-blog.git    
$ cd rails-blog/    
$ uru 233p222   
$ bundle install    
$ bundle exec rake db:create db:migrate # it will create a mysql db and then execute the migration scripts.    
$ rails server -p 3002    
NOTE: By default, the default server is WEBrick. You can change it with different rails server such as Thin server.    
Make sure that you installed the following requirements such as the rubyinstaller, the gems like rails and bundler.

#### Testing
$ bundle exec rake test

#### Migration for Production
$ bundle exec rake db:create db:migrate RAILS_ENV=production     
$ bundle exec rake assets:precompile RAILS_ENV=production   

#### Technology stacks
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

#### Screenshots:
Demo account   
account: user@mail.com   
pass: test   

![Home (default)](/screenshots/home-default.png)   

![Home (default)](/screenshots/add-article.png)   

#### Developer
rails-blog &copy; 2015 Arman Ortega. Released under the MIT License.     
