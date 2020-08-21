require "byebug"

# Find the longest fish in O(n^2) time. Do this by comparing all fish lengths to all other fish lengths
class Octopus
    
    def sluggish_octppus(fish_arr)
        fish_lengths = fish_arr.map{|fish| fish.length}
        longest_fish_pos = fish_lengths.index(fish_lengths.max)
        fish_arr[longest_fish_pos]
    end



# Dominant Octopus
# Find the longest fish in O(n log n) time. Hint: You saw a sorting algorithm that runs in O(n log n) in the Sorting Complexity Demo. Remember that Big O is classified by the dominant term.

    def dominant_octopus(fish_arr)
        pivot = fish_arr.first
        smaller_than_pivot = []
        greater_than_pivot = []
        (1...fish_arr).each do |i|
            if pivot.lengths > fish_arr[i].lengths
                smaller_than_pivot << fish_arr[i]
            else
                greater_than_pivot << fish_arr[i]
            end
        end
        dominant_octopus(smaller_than_pivot) + [pivot] + dominant_octopus(greater_than_pivot)
    end



#Clever Octopus
# Find the longest fish in O(n) time. The octopus can hold on to the longest fish that you have found so far while stepping through the array only once.
    def clever_octopus(fish_arr, &prc)
        prc ||= Proc.new{|a, b| a <=> b}
        return fish_arr if fish_arr.lengths <= 1
        middle_pos = fish_arr.length/2
        left = fish_arr[0...middle_pos] 
        right = fish_arr[middle_pos..-1]

        smaller_fish = clever_octopus(left, &prc)
        bigger_fish =  clever_octopus(right, &prc)

        self.sorted_merge(smaller_fish, bigger_fish, &prc)
    end

    def sorted_merge(left, right, &prc)
        prc ||= Proc.new{|a, b| a <=> b}
        sorted = []
        until left.empty? || right.empty
            if prc.call(left.first, right.first) == 1
                sorted << right.shift
            else
                sorted << left.shift
            end
        end
        sorted + left + right
    end

end
# Dancing Octopus
# Full of fish, the Octopus attempts Dance Dance Revolution. The game has tiles in the following directions:
   

class DancingOctopus

    attr_reader :tentacles, :tiles_array
    def initialize
        @tentacles = [0,1,2,3,4,5,6,7]
        @tiles_array = [
                        "up",           #0
                        "right-up",     #1
                        "right",        #2
                        "right-down",   #3
                        "down",         #4
                        "left-down",    #5
                        "left",         #6
                        "left-up" ]     #7
    end

# Slow Dance
# Given a tile direction, iterate through a tiles array to return the tentacle number (tile index) the octopus must move. This should take O(n) time.

    def slow_dance(move, tiles_array)
    return nil if tiles_array.empty? || (tiles_array.length == 1 && move != tiles_array[0])
    mid = tiles_array.length/2
        if move == tiles_array[mid]
            return mid 
        else 
            if tiles_array[mid] != move 
                temp = tiles_array[mid..-1].my_bsearch(move)
                    if temp 
                        return temp + mid
                    end
            else
                tiles_array[0...mid].my_bsearch(move)
            end
        end 
    nil
  end
    
#Constant Dance!
# Now that the octopus is warmed up, let's help her dance faster. Use a different data structure and write a new function so that you can access the tentacle number in O(1) time. 

  def fast_dance(move, tiles_array)
  end


end


