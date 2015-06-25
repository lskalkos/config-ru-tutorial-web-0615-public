class HelloRack
  def call(env)

    if env["REQUEST_PATH"] == "/"
      string = "Hello Rack from if statement!"
    else
      string = "I don't know what happened"
    end

    [200, {"Content-Type" => "text/html"}, [string]]
  end
end
