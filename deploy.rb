#!/usr/bin/env ruby

require 'net/ssh'

module CV
  def CV.check_dir
    return File.exists? "danbarbercv"
  end

  def CV.deploy
    if check_dir
      Net::SSH.start('vps2.danbee.co.uk', 'danbee') do |ssh|
        ssh.exec("cd ~/cv; bundle install")
        ssh.exec("cd ~/cv; git pull origin master")
        ssh.exec("cd ~/cv; stasis")
      end
    else
      puts "Please run this from the projects directory."
    end
  end
end

CV.deploy
