class Parcel
  define_method(:initialize) do |length, width, height, weight|
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  define_method(:parcel) do
    volume = @length * @width * @height
    return volume
  end
end
