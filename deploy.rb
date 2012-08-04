#!/usr/bin/env ruby

require 'net/ssh'

module CV
  def CV.check_dir
    return File.exists? "danbarbercv"
  end

  def CV.deploy
    if check_dir
      puts "Deploying..."
      Net::SSH.start('vps2.danbee.co.uk', 'danbee') do |ssh|
        # capture all stderr and stdout output from a remote process
        ssh.exec!("cd ~/cv")
        ssh.exec!("git pull origin")
        ssh.exec!("stasis")
      end
    else
      puts "Please run this from the projects directory."
    end
  end
end

CV.deploy
