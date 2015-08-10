require('rspec')
require('parcels')

describe(Parcel) do
  describe('#parcel') do
    it ('will return the product of the dimensions to determine volume') do
      new_parcel = Parcel.new(3, 3, 3, 5)
      expect(new_parcel.parcel()).to(eq(27))
    end
  end
end
