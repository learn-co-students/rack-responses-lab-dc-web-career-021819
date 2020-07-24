class Application

  def call(env)
    resp = Rack::Response.new

    time = Time.now.strftime("%H:%M %p")

    if time[-2] == "A"
      resp.write "Good Morning!"
    elsif time[-2] == "P"
      resp.write "Good Afternoon!"
    end

    resp.finish
  end

end
