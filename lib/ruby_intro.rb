# frozen_string_literal: true

# Part 1

def sum(arr)
  # YOUR CODE HERE
  sum = 0
  arr.each { |a| sum+=a }
  sum
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if arr.empty?
    return 0
  else
    return arr.max(2).reduce(:+)
  end
end

def sum_to_n?(arr, number)
  # YOUR CODE HERE
  arr.each_with_index do |x, i|
    (i + 1...arr.length).each do |j|
      y = arr[j]
      if x + y == number
        return true
      end
    end
  end
  return false
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(string)
  # YOUR CODE HERE
  /^(?![AEIOUaeiou])[A-Za-z]/.match?(string)
end

def binary_multiple_of_4?(string)
  # YOUR CODE HERE
  /^[01]*00$/.match?(string) || string == '0'
end

# Part 3

# Object representing a book
class BookInStock
  # YOUR CODE HERE
  def initialize(isbn, price)
    if isbn.empty? || price <= 0
      raise ArgumentError, "ISBN cannot be empty, and price must be greater than zero"
    end

    @isbn = isbn
    @price = price
  end

  # Getter for isbn
  def isbn
    @isbn
  end

  # Setter for isbn
  def isbn=(new_isbn)
    @isbn = new_isbn
  end

  # Getter for price
  def price
    @price
  end

  # Setter for price
  def price=(new_price)
    @price = new_price
  end

  def price_as_string
    "$%.2f" % @price
  end
end
