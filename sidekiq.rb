#SEARCH SIDEKIQ INSTANCE
ps aux | grep sidekiq
 
#KILL SIDEKIQ INSTANCE
kill -9 #{sidekiq instance}

#START SIDEKIQ IN PROODUCTION
bundle exec sidekiq -d -L log/sidekiq.log -C config/sidekiq.yml -e production

#START SIDEKIQ IN DEVELOPMENT
bundle exec sidekiq
