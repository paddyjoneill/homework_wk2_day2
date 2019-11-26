class Bear
  def initialize(name,type)
    @name = name
    @type = type
    @stomach = []
  end

  attr_reader :name, :type

  def stomach_contents(bear)
    return @stomach.length
  end


end
