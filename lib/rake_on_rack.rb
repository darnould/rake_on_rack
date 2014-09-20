require "rake_on_rack/application"
require "rack"
require "thin"

module RakeOnRack
  def self.start(file_path, port)
    builder = Rack::Builder.new { run RakeOnRack::Application.new file_path }

    Rack::Handler::Thin.run builder, :Port => port
  end
end
