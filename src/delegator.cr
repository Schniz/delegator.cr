class Delegator(T)
  VERSION = "0.1.0"

  def initialize(@object : T)
  end

  def self.delegate(object)
    new(object)
  end

  forward_missing_to @object
end
