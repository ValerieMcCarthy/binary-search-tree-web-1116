class BST
  
    attr_accessor :data, :left, :right

 
    def initialize( data )
      @data = data
      @left = nil
      @right = nil
    end


 
    def insert( new_key )
      if new_key <= @data
        @left.nil? ? @left = BST.new( new_key ) : @left.insert( new_key )
      elsif new_key > @data
        @right.nil? ? @right = BST.new( new_key ) : @right.insert( new_key )
      end
    end

    def each(&block)
        left.each(&block) if left
        block.call(@data)
        right.each(&block) if right
    end

 
 

end