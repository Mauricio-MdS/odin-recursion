# frozen_string_literal: true

# Recursive methods
class Recursion
  def fibs(number)
    return [0] if number == 1

    fibonacci_sequence = [0, 1]
    2.upto(number - 1) do |(index)|
      fibonacci_sequence.push((fibonacci_sequence[index - 1] + fibonacci_sequence[index - 2]))
    end
    fibonacci_sequence
  end

  def fibs_rec(number)
    return [0, 1][0, number] if number < 3

    sequence = fibs_rec(number - 1)
    sequence.push(sequence[-1] + sequence[-2])
  end

  def merge_sort(array)
    return array if array.length < 2

    left = merge_sort(array.slice!(0, array.length / 2))
    right = merge_sort(array)
    sorted = []
    sorted.push left.first < right.first ? left.shift : right.shift until left.empty? || right.empty?
    sorted + left + right
  end
end
