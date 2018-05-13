class Application
  def call (env)
    resp = Rack::Response.new
    t=Time.now
    if t.hour > 6 && t.hour <12
      resp.write "Good Morning"
    elsif t.hour >=12 && t.hour < 19
      resp.write "Good Afternoon"
    else
      resp.write "Good Evening"
    end

    resp.finish
  end
end
