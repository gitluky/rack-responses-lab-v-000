class Greeting

  def call

    resp = Rack::Response.new

    current_hour = Time.now.hour
    if current_hour >= 12
      resp.write "Good Afternoon!"
    else
      resp.write "Good Morning!"
    end
  end

end
