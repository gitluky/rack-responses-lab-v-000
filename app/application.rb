class Application

  def call

    resp = Rack::Response.new

    current_hour = Time.new.hour
    if current_hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish

  end

end
