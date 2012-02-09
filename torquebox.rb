TorqueBox.configure do

  torquebox_init do
    require 'talker'
  end

  service HelloService
end
