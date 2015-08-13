Sample Blog application using Rails   

Requirements:   
Ruby 2.2.2p95   
Rails 4.1.4   

Installation:   
   
$ git clone --depth=1 https://github.com/sudogem/rails-blog.git   
$ cd rails-blog/   
$ bundle install    
$ bundle exec rake db:create db:migrate ##it will create a mysql database and then migrate.    
$ rails server -p 3001    
NOTE: By default, the default server is WEBrick. You can change it with different rails server such as Thin server.    

Technology stacks:    
Authentication using OmniAuth    
MaterialCSS    
HAML Templating    
mySQL    




