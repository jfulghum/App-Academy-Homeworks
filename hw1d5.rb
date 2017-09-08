class Stack
  def initialize
    @ivar = []
  end

  def add(el)
    @ivar.push(el)
    el
  end

  def remove
    @ivar.pop
  end

  def show
    @ivar
  end
end


class Queue
  def initialize
    @ivar = []
  end

  def enqueue(el)
    @ivar.unshift(el)
    el
  end

  def dequeue
    @ivar.pop
  end

  def show
    @ivar.dup
  end
end

class Map

  def initialize
    @map = []
  end

  def assign(key, value)
    pair_index = @map.index{|pair| pair[0] == key}
    pair_index ? @map[pair_index][1] = value : @map.push([key, value])
    [key, value]
  end

  def lookup(key)
    @map.include?(key)
  end

  def remove(key)
    @map.reject! {|pair| pair[0] == key}
  end

  def show
    deep_dup(@map)
  end

  private
  def deep_dup
    arr.map {|el| el.is_a?(Array) ? deep_dup(el) : el }
  end

end
