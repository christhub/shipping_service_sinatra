class Parcel
  define_method(:initialize) do |length, width, height, weight, gift_wrap_option|
    @length = length
    @width = width
    @height = height
    @weight = weight
    @gift_wrap_option = gift_wrap_option
  end

  define_method(:volume) do
    @volume = @length * @width * @height
    return @volume
  end

  define_method(:cost_to_ship) do
    if (@weight <= 5) && ((@length < 48) || (@width < 48) || (@height < 48))
      @shipping_cost = 0
    elsif ((@weight > 5) && (@weight <= 20)) && ((@length < 48) || (@width < 48) || (@height < 48))
      @shipping_cost = 14.95
    elsif
      ((@weight > 20) && (@weight <= 100)) && ((@length < 48) || (@width < 48) || (@height < 48))
      @shipping_cost = 24.95
    elsif
      (@weight > 100) && ((@length < 48) || (@width < 48) || (@height < 48))
      @shipping_cost = 39.95
    else
      @shipping_cost = 50
    end
  end

  define_method(:gift_wrap?) do
    price_per_foot_sq = 0.50 #dollar
    surface_area = (2 * ((@width * @length) + (@height * @length) + (@height * @width)))/144
    if @gift_wrap_option == "yes"
      @gift_wrap_cost = (surface_area * price_per_foot_sq)
    else
      @gift_wrap_cost = 0
    end
  end

end
