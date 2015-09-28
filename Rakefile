# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

task demo: :environment do
  puts "Deal count (before): #{Deal.count}"
  puts "DealPrize count (before): #{DealPrize.count}"
  puts "Creating a Deal"
  Deal.create!
  puts "Deal count (after): #{Deal.count}"
  puts "DealPrize count (after): #{DealPrize.count}"
  puts "Showing log"
  puts `tail -n 20 log/#{Rails.env}.log`
end
