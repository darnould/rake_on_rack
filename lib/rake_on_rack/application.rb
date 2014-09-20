require 'ostruct'
require 'json'

require 'rake_on_rack/task'

module RakeOnRack
  class Application
    def initialize(file_path)
      load file_path
    end

    def call(env)
      request = Rack::Request.new env 
      path = request.path
      body = request.body.read

      run_task(path[1..-1], body)
    end

    private

    def run_task(name, args)
      Task.new(name, args).execute
    rescue Task::NotFound
      response 404, "Task not found"
    else
      response 200, "Task executed"
    end

    def response(status, body)
      [status, { "Content-Type" => "text/plain" }, [body]]
    end
  end
end
