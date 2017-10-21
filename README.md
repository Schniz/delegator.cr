# Delegator

Decorates an object and delegates missing methods to it.
[Based on the code in this gist](https://gist.github.com/decors/a1ba2b5e4a700235b0d993378836d7b4) by @decors

## Installation

Add this to your application's `shard.yml`:

```yaml
dependencies:
  delegator:
    github: Schniz/delegator.cr
```

## Usage

```crystal
require "delegator"

# Given a class
class Person
  property name
  def initialize(@name); end
end

# Create a subclass of Delegator
class PersonDelegator < Delegator(Person)
  def greet
    "Hello, #{name}!"
  end
end

# Use it to decorate objects!

joe = Person.new("Joe")
PersonDelegator.delegate(joe).greet # "Hello Joe!"
```

## Contributing

1. Fork it ( https://github.com/Schniz/delegator.cr/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [Schniz](https://github.com/Schniz) Gal Schlezinger - creator, maintainer
