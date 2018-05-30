require 'rufus-scheduler'

s = Rufus::Scheduler.singleton

s.every '10s' do 
  pp "hello, it's #{Time.now}"
end
