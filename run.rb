#!/usr/bin/env ruby

def ip
  "2#{rand(9)}#{rand(9)}.0.1#{rand(9)}#{rand(9)}.1#{rand(9)}#{rand(9)}"
end

def identd
  '-'
end

def user_id
  '-'
end

def time
  Time.now.strftime('[%d/%b/%Y:%H:%M:%S -0700]')
end

def path
  '"GET ' +
  (
    rand(2) == 0 ? '/' : "/ranking/?page=#{rand(3)}"
  ) +
  ' HTTP/1.0"'
end

def status
  200
end

def size
  rand(3000) + 5
end

loop do
  puts [ip,identd,time,path,status,size].join(" ")
end
