class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:volume) do
    @volume = @length * @width * @height
    return @volume
  end

  define_method(:cost_to_ship) do
    if (@weight <= 5) && ((@length < 48) || (@width < 48) || (@height < 48))
      "Free shipping!"
    elsif ((@weight > 5) && (@weight <= 20)) && ((@length < 48) || (@width < 48) || (@height < 48))
      "$14.95 shipping"
    elsif
      ((@weight > 20) && (@weight <= 100)) && ((@length < 48) || (@width < 48) || (@height < 48))
      "$24.95 shipping"
    elsif
      (@weight > 100) && ((@length < 48) || (@width < 48) || (@height < 48))
      "$39.95 shipping"
    end
  end
end
