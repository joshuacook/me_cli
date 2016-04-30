@dir = "/vagrant/www/"
user "koolHerc", "koolHerc"

worker_processes 4

timeout 30

listen "/tmp/unicorn.sock", :backlog => 64

pid "/tmp/unicorn.pid"

stderr_path "/tmp/uni_error.log"
stdout_path "/tmp/uni_stdout.log"
