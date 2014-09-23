class Positivizer
  def action(numbers)
    return [] unless numbers.is_a?(Array)
    numbers.select do |number|
      number.is_a?(Numeric) && number > 0
    end
  end
end 


# Test One
positivizer = Positivizer.new

# 2) Act
answer = positivizer.action([1,-4,5,0,-100])

# 3) Check
if answer == [1,5]
  puts "OK"
else
  puts "Fail, got #{answer} instead"
end

# Test two
answer = positivizer.action([])

if answer == []
  puts "OK"
else
  puts "Fail, got #{answer} instead"
end

# Test three
answer = positivizer.action(["is", "testing"])

if answer == []
  puts "OK"
else
  puts "Fail, got #{answer} instead"
end

# Test four
answer = positivizer.action(nil)

if answer == []
  puts "OK"
else
  puts "Fail.. got #{answer} instead"
end
