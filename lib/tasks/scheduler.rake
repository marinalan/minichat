desc "Removing old comments"

task remove_excessive_comments: :envionment do
  puts "Removing excessive comments now..."
  Comment.remove_excessive!
end
