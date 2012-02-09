class HelloService

  def initialize(opts={})
    @done = false
    @logger = TorqueBox::Logger.new( self.class )
  end

  def start()
    Thread.new { run }
  end

  def stop()
    @done = true
  end

  def run
    until @done do
      @logger.warn Talker.greeting
      sleep 10
    end
  end

end


