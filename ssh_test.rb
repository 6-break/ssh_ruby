require 'rubygems'
require 'net/ssh'

HOST = 'hostname or IP address'
USER = 'username'
PWD = 'password'

# case1: use pub key
Net::SSH.start(HOST, USER, :keys => ['your private or public key path'], :passphrase => PWD) do |ssh|
  # ls , then print the result  
  puts ssh.exec! 'ls ~/'
end

# case2: use ID and PWD
#Net::SSH.start(HOST, USER, PWD) do |ssh|
#  puts ssh.exec! 'ls ~/'
#end
