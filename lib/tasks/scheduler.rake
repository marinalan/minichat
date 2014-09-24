desc "Removing old comments"

task remove_excessive_comments: :environment do
  puts "Removing excessive comments now..."
  Comment.remove_excessive!
end
