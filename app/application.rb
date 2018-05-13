class Application

  def call(env)
    resp = Rack::Response.new

    time = Kernel.rand(0000..2400)

    if time < 1200
      resp.write "Good Morning!"
    else
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
