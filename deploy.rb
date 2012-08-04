#!/usr/bin/env ruby

module CV
  def CV.check_dir
    return File.exists? "danbarbercv"
  end

  def CV.deploy
    if check_dir
      puts "Deploying..."
    end
  end
end

CV.deploy
