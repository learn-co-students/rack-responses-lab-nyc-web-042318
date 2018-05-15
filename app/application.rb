class Application

  def call(env)
    resp = Rack::Response.new

    cur_time = Time.now
    if cur_time.hour < 12
      resp.write 'Good Morning!'
    elsif (cur_time.hour == 12 && cur_time.minute > 0) || cur_time.hour > 12
      resp.write 'Good Afternoon!'
    else
      resp.write 'Good Noon!'
    end

    resp.finish
  end
end
