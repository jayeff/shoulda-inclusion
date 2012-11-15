require 'spec_helper'

describe User do
  # works with string
  it { should ensure_inclusion_of(:name).in_array([0, 1]) }

  # error with integer
  it { should ensure_inclusion_of(:age).in_array([0, 1, 5]) }

  # error with boolean (works with string)
  it { should ensure_inclusion_of(:admin).in_array([true, false]) }

  #possible alternative test for integer
  it { should allow_value(0, 1, 5).for(:age) }
  # possible alternative test for boolean
  it { should_not allow_value(nil).for(:admin) }
end
