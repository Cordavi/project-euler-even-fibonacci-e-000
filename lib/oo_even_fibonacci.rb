# Implement your object-oriented solution here!
class EvenFibonacci 

   def initialize(maximum)
     @maximum = maximum
   end

  def sum
      currentIndex = 1
      numberArray = [1, 2]
      sumOfNumbers = Array.new

      loop do
         newValue = (numberArray[currentIndex] + numberArray[currentIndex - 1])
         break if newValue > @maximum
         numberArray << newValue
         currentIndex += 1
      end 

     numberArray.each do |i|
       if i % 2 == 0
         sumOfNumbers << i
       end
      end

   return sumOfNumbers.inject(0, :+)
   end

end