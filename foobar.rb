class Foobar

  def self.baz(a)
    # Class method, not an instance method
    # Call with `Foobar.baz`
    # Q4 CODE HERE
    # changes each string into an integer, adds two to each number...
    a.map! { |x| x.to_i + 2 }
    # keeps the even numbers only...
    a.delete_if &:odd?
    # removes any duplicates...
    a.uniq!
    # rejects the resulting numbers greater than or equal to ten...
    a.reject! { |number| number >= 10 }
    # and finally returns the sum of the resulting array.
    return a.inject(0) { |result, element| result + element }
  end
end
