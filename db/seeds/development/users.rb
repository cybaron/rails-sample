%w(alpha beta gamma).each do |name|
  user = User.new(
    :email => "#{name}@example.com",
    :passwd => "#{name}...",
    :passwd_confirmation => "#{name}..."
  )
  user.save
#  user.confirm!
end

