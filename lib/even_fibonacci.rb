# Implement your procedural solution here!
def fibonacci(maximum)

  currentIndex = 1
  numberArray = [1, 2]
  loop do
    newValue = (numberArray[currentIndex] + numberArray[currentIndex - 1])
    break if newValue > maximum
    numberArray << newValue
    currentIndex += 1
  end 
  
  return numberArray
  
end



def even_fibonacci_sum(maximum)
 
  sequence =  fibonacci(maximum)
  numbers = Array.new
  
  sequence.each do |i|
    if i % 2 == 0
      numbers << i
    end
  end

  numbers.inject(0, :+)

end

class EvenFibonacci

  def initalize(maximum)
    @maximum = maximum
  end

  def fibonacci
    Object.send(:fibonacci, @maximum) 
  end
  
  def even_fibonacci_sum
    Object.send(:even_fibonacci_sum, @maximum) 
  end

end 