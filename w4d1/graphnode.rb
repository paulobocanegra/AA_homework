require "byebug"



class GraphNode

  attr_accessor :val, :neighbors

  def initialize(val)

    self.val = val
    self.neighbors = []
  end

  def add_neighbor(node)
    self.neighbors << node
  end
end

def bfs(start_node, target)
    queue = [start_node]
   visited = Set.new()

  if queue.length == 0
    node = queue.shift
    if !visited.include?(node)
        return node.val if node.val == target
          visited.add(node)
         queue += node.neighbors
     end
  end
  
  return nil
end

# graph1 = GraphNode.new(3)
# puts graph1