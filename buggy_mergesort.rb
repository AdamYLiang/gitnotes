class Array
  def merge_sort(&prc)
    return self if self.count <= 1

    # default value for a proc
    # prc = prc || Proc.new {|a, b| a <=> b}
    prc ||= Proc.new {|a, b| a <=> b}

    middle = self.length / 2
    left = self[0...middle]
    right = self[middle..-1]
  
    # make sure you pass down the proc to recursive calls
    sorted_left = left.merge_sort(&prc)
    sorted_right = right.merge_sort(&prc)
    Array.merge(sorted_left, sorted_right, prc)
  end
  
  private
  def self.merge(left, right, prc)
    result = []
    until left.empty? || right.empty?
      # prc.call will return -1, 0, or 1 since we are using <=>
      if prc.call(left[0], right[0]) <= 0
        result << left.shift
      else
        result << right.shift
      end
    end
  
    result + left + right
  end
end


array = [5, 4, 300, 25, 21, 26, 24]

p array.merge_sort

# passing in a block 
p array.merge_sort { |a, b| b <=> a }