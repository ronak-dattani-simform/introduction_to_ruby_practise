#-----------------------------------------------------------
class Car
  def initialize
    puts "Welcome to Simform Cars !"
  end

  #  Created a class named Car

  #-----------------------------------------------------------
  def price_calculator(price)
    return (price * 1.18).to_i
  end

  #  Used concept of type casting and defined a method to calculate price with 18% GST added

  #-----------------------------------------------------------

  def ask_for_color
    puts "Which color do you want ? "
    @color = gets.chomp.downcase
    #  Here @color is instance variable, only can be defined and intialised inside method
    #  Can be accessed in all methods of the class
    puts "Color of car :  #{@color}          Instance Variable used.                "

    color = "White"
    #  Here color is local variable defined and intialised in the current method
    #  Can be accessed only in current method only
    puts "Local variable :  #{color}"

    return @color
  end

  #-----------------------------------------------------------

  NUMBEROFWHEELS = 4
  #  It is always a good practice to define CONSTANTS at beginin of class.

  def contstant_demo
    puts "Car have #{NUMBEROFWHEELS} wheels."
  end

  #-----------------------------------------------------------

  def color_confirmation(color)
    puts "Color of the car is #{color}"
  end

  #-----------------------------------------------------------

  FUEL = {
    petrol: 1,
    diesel: 2,
    cng: 3,
  }

  def ask_for_fuel
    puts "Which fuel car do you want ?"
    puts "Petrol/Diesel/CNG"

    fuel_type = gets.chomp.downcase

    @type = FUEL[:"#{fuel_type}"]
    case @type
    when 1
      @price = 1500000
    when 2
      @price = 1200000
    when 3
      @price = 1000000
    else
      puts "Please select correct fuel type."
      exit
    end
  end

  #-----------------------------------------------------------

  def price_confirmation
    puts "Price of " + FUEL.key(@type).to_s + " car is : #{@price}"
    return @price
  end
end

car = Car.new

car.ask_for_fuel
color = car.ask_for_color
car.contstant_demo
car.color_confirmation(color)
price = car.price_confirmation
puts "Price after 18% GST is : #{car.price_calculator(price)}"

#  Haven't used standard code practices to perform some tasks. Code can be optimise. Thank you.
