class Application

  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)

    time = Time.now
    if time.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
    
    resp.finish
  end
end
