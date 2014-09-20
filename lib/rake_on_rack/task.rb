require 'rake'

module RakeOnRack
  class Task
    attr_reader :name, :args

    def initialize(name, args)
      @name = name
      @args = args

      raise NotFound if not Rake::Task.task_defined? name
    end

    def execute
      task.execute args
    end

    class NotFound < StandardError
    end

    private

    def task
      Rake::Task[name]
    end
  end
end
