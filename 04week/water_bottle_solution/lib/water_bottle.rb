class WaterBottle
  def initialize
    @empty = true
  end

  def empty?
    @empty
  end

  def fill
    @empty = false
  end

  def drink
    if empty?
      "The bottle is empty"
    else
      @empty = true
        "Water"
    end
  end
end