commas = File.readlines('commas.txt')
pipes = File.readlines('pipes.txt')

class Customer
  attr_accessor :first_name, :last_name, :email, :vehicle_type, :vehicle_name, :vehicle_length
  
  @@all = []

  def initialize(first_name, last_name, email, vehicle_type, vehicle_name, vehicle_length)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @vehicle_type = vehicle_type
    @vehicle_name = vehicle_name
    @vehicle_length = vehicle_length
    @@all << self
  end

  def self.all
    @@all
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  def self.sort_by_name
    self.all.sort_by {|customer| customer.full_name}.map do |customer|
      "#{customer.full_name} - Email: #{customer.email} - Vehicle Type: #{customer.vehicle_type.capitalize} - Vehicle Name: #{customer.vehicle_name} - Vehicle Length: #{customer.vehicle_length}"
    end
  end

  def self.sort_by_vehicle
    self.all.sort_by {|customer| customer.vehicle_type}.map do |customer|
      "#{customer.vehicle_type.upcase} - Customer: #{customer.full_name} - Email: #{customer.email} - Vehicle Name: #{customer.vehicle_name} - Vehicle Length #{customer.vehicle_length}"
    end
  end

end

commas.each do |customer|
  Customer.new(customer.split(',')[0], customer.split(',')[1], customer.split(',')[2], customer.split(',')[3].downcase, customer.split(',')[4], customer.split(',')[5])
end

pipes.each do |customer|
  Customer.new(customer.split('|')[0], customer.split('|')[1], customer.split('|')[2], customer.split('|')[3].downcase, customer.split('|')[4], customer.split('|')[5])
end

# puts Customer.sort_by_name
puts Customer.sort_by_vehicle