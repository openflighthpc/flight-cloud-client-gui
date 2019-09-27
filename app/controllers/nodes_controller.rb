class NodesController < ApplicationController
  def index
    test = ENV['CLIENT_EXEC']
    puts test
    listall = `bundle exec #{ENV['CLIENT_EXEC']} list --all`
    listall = listall.split("\n\n")
    @nodes = Array.new
    listall.each do |node|
      deployment = node.match(/Deployment: '(.*)'/)[1]
      status = node.match(/Status: (.*)/)[1]
      if status == "Offline" || deployment == "domain"
        power = "N/A"
      else
        power = `bundle exec #{ENV['CLIENT_EXEC']} power #{deployment} status`
        power = power.match(/#{deployment}: (.*)/)[1]
      end
      @nodes.push(
        Node.new(deployment,
                 status,
                 power
        )
      )
    end
  end

  def toggle
    deployment = params["deployment"]
    power = params["power"]
    if power == "running"
      system("bundle exec #{ENV['CLIENT_EXEC']} power #{deployment} off")
    elsif power == "stopped"
      system("bundle exec #{ENV['CLIENT_EXEC']} power #{deployment} on")
    end
    redirect_to '/nodes/index'
  end
end
