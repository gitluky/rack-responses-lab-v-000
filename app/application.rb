class Application

  def call(env)

    resp = Rack::Response.new

    Time.new.hour >= 12 ? resp.write "Good Afternoon!" : resp.finish "Good Morning!"

    resp.finish

  end

end
