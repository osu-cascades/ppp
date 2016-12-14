environment ENV.fetch("RAILS_ENV") { "development" }
port        ENV.fetch("PORT") { 3000 }

threads_count = ENV.fetch("RAILS_MAX_THREADS") { 5 }.to_i
threads threads_count, threads_count

workers ENV.fetch("WEB_CONCURRENCY") { 2 }
preload_app!
on_worker_boot do
  ActiveRecord::Base.establish_connection if defined?(ActiveRecord)
end

plugin :tmp_restart
