class Application

  def call(env)
    resp = Rack::Response.new
    # if Time.new.hour >= 12
    #   resp.write "Good Afternoon!"
    # else
    #   respe.write "Good Morning!"
    # end
    now = Time.now
    if now.hour >=12
      resp.write "Good Afternoon"
    else
      resp.write "Good Morning"
    end
    resp.finish
  end
end
