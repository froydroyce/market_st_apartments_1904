class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit_num)
    @units << unit_num
  end

  def average_rent
    prices = []
    @units.each do |unit|
      prices << unit.monthly_rent
    end
    prices.sum.to_f / prices.length
  end

  def renter_with_highest_rent
    units_with_renter = @units.find_all do |unit|
      unit.renter != nil
    end
    unit_with_highest_rent = units_with_renter.max_by do |unit|
      unit.monthly_rent
    end
    unit_with_highest_rent.renter
  end

  def annual_breakdown
    annual = {}
    units_with_renter = @units.find_all do |unit|
      unit.renter != nil
    end
    units_with_renter.each do |unit|
      annual[unit.renter.name] = unit.monthly_rent * 12
    end
    annual
  end
end
