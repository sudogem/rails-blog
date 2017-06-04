task "start" => :environment do
  system 'rails server -p 3002'
end
