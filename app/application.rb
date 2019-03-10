class Application
  def call(env)
    resp = Rack::Response.new
    time = Time.new
    resp.write (time)
    if (true)
      resp.write "Good Morning! Good Afternoon!"
    else
      resp.write ""
    end
    resp.finish
  end
end
