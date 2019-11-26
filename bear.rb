class Bear
  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
    @food_count = 0
  end

  attr_reader :name, :type

  def stomach_contents
    return @stomach.length
  end

  def eat_fish(river, fish)
    river.remove_fish(fish)
    @stomach << fish
    @food_count += 1
  end

  def roar
    return "Roar"
  end

  def food_count
    return @food_count
  end

end
