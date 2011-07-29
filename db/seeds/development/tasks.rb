alpha = User.find_by_email('alpha@example.com')
beta = User.find_by_email('beta@example.com')

Task.create(:name => "Task 0", :due_date => Date.today, :done => true, :user => alpha)

1.upto(100) do |n|
  Task.create(:name => "Task #{n}", :due_date => n.days.from_now, :done => false, :user => n.even?? alpha:beta)
end
