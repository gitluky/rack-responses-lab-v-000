class Application

  def call

    resp = Rack::Response.new

    if Time.new.hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end

    resp.finish

  end

end
