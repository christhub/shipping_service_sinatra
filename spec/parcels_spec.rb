require('rspec')
require('parcels')

describe(Parcel) do
  describe('#volume') do
    it ('will return the product of the dimensions to determine volume') do
      new_parcel = Parcel.new(3, 3, 3, 5)
      expect(new_parcel.volume()).to(eq(27))
    end
  end

  describe('#cost_to_ship') do
    it ('returns the shipping cost of the parcel') do
      new_parcel = Parcel.new(3, 3, 3, 20)
      expect(new_parcel.cost_to_ship()).to(eq("$14.95 shipping"))
    end
  end
end
