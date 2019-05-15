class Apartment
  attr_reader :number, :monthly_rent, :bathrooms, :bedrooms, :renter

  def initialize(specs)
    @number = specs[:number]
    @monthly_rent = specs[:monthly_rent]
    @bathrooms = specs[:bathrooms]
    @bedrooms = specs[:bedrooms]
    @renter = renter
  end

  def add_renter(name)
    @renter = name
  end
end
