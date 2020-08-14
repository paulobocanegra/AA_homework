# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:


  class Stack

    attr_reader :stacks
    def initialize(stacks)
      # create ivar to store stack here!
      @stacks = stacks
    end

    def push(el)
      # adds an element to the stack
      @stacks << el
      @stacks
    end

    def pop
      # removes one element from the stack
      @stacks.delete(@stacks.last)
      @stacks
    end

    def peek
      # returns, but doesn't remove, the top element in the stack
      @stacks.pop
    end
  end
  
  # arr = ["line", "stack2", "stack3"]
  # stackstest = Stack.new(arr)
  # # p stackstest.pop
  # p stackstest.pop



# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!



# Exercise 2 - Queue 
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

class Queue
  
  def initialize
    @line = []
    
  end

  def enqueue(el)
    @line << el 
  end

  def dequeue
    @line.shift
    @line 
  end

  def peek
    raise "empty line" if @line.empty?
    @line.first
  end 

end



#  arr = ["line1", "line2", "line"]
  # lines = Queue.new
  # # p lines.pop
  #  lines.enqueue("guest1")
  #  lines.enqueue("guest2")
  #  lines.enqueue("guest3")
  #  p lines.peek




# Test your code to ensure it follows the principle of FIFO.

# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# my_map = [k1, v1, k2, v2, k3, v2

class Map



  def initialize
    @structure = []
  end

  def set(key, value)
    @structure << [key, value]
  end

  def get(key)
    # @structure.flatten.select { |ele| ele == key }
    # in case get "gets" key and value:
    gotten = []
    @structure.flatten.each_with_index do |ele, i|
      if ele == key
         gotten << ele
         gotten <<  @structure.flatten[i + 1]
      end
    end
    gotten
  end


  def delete(key)
    @structure.delete_if {|subarr| subarr[0] == key}
    @structure
  end
  
end


map1 = Map.new
map1.set("door", "opening of rooms")
map1.set("bulb", "glass with electricity")
map1.set("cat", "domestic feline")

#  map1.structure
 p map1.delete("cat")

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.