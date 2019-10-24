require "peach/version"

class Peach
  private_class_method :new

  def self.enum_for(*args)
    new(*args).enum_for
  end

  def initialize(list, pool_size = 5)
    @queue = list.inject(Queue.new, :<<)
    @pool_size = pool_size
  end

  def each(*args)
    Array.new(@pool_size) do |i|
      Thread.new do
        yield(@queue.pop) until @queue.empty?
      end
    end.each(&:join)
  end
end
