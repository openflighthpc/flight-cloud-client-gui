class Node
  attr_accessor :deployment, :status, :power
  def initialize(deployment,status,power)
    @deployment = deployment
    @status = status
    @power = power
  end
end
