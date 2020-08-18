class Board
  attr_accessor :cups

  def initialize(name1, name2)
      @name1 = name1
      @name2 = name2
      @cups = Array.new(14){Array.new(4, :stone)}
      self.place_stones
  end

  def place_stones
    # helper method to #initialize every non-store cup with four stones each
    (0...@cups.length).each do |i|
        if i == 6 || i == 13
          @cups[i] = []
        end
      end
      @cups
  end

  def [](pos)
    row, col = pos[0], pos[1]
    @cups[row,col]
  end

   def []=(pos, value)
    row, col = pos[0], pos[1]
    @cups[row,col] = value
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if @cups[start_pos].nil? #!(0...13).include?(start_pos[0]) || !(0...13).include?(start_pos[1])
    raise "Starting cup is empty" if @cups[start_pos].length == 0
  end

  def make_move(start_pos, current_player_name)
      self.cups[start_pos] = []
      @cups.take_turn(current_player_name)
     self.render
  end

  def next_turn(ending_cup_idx)
    # helper method to determine whether #make_move returns :switch, :prompt, or ending_cup_idx
    self.render
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
  end

  def winner
  end
end
