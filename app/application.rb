class Application
  def call(env)
    resp = Rack::Response.new

    dt = Time.now
    time_hour = dt.hour

    if time_hour.between?(1, 11)
     resp.write "Good Morning!"
    else
     resp.write "Good Afternoon!"
    end
  resp.finish
 end
end
