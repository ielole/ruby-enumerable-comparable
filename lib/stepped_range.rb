#frozen_string_literal: true
class SteppedRange
  # 5 make this Comparable/ adds module to class/ defined in ruby
  # other self written modules need to be defined by you, explicitly in the code
  include Enumerable

  # 3 create attr_reader
  attr_reader :start, :fin, :step
  def initialize(start, fin, step)
    # 1 step determine arguments
    @start = start
    @fin = fin
    @step = step
    # @argument = argument
    # Range.new(1,10)
    # SteppedRange.new ()
  end

  def each
    # specific to type SteppedRange
    current = start
    while current < fin
      yield current
      # above calls block as long as the above condition is true
      current += step
      # each is called with a block, above creates a block within
      # the methods are specific to Enumerable because its a list,
      # --> in relation to each
      # call to each returns object
      # test srng.each { |e| p e }, p = print
      # have to define what each is going to do for this specific class
    end
    self
  end
end

# 2 step = make a range in terminal, to make sure code works
# 4 test to make sure code works
