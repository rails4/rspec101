# RSpec

Dokumentacja:

1. [Better Specs](http://betterspecs.org/).
1. Dokumentacja [RSpec](https://www.relishapp.com/rspec/):
  - https://www.relishapp.com/rspec/rspec-core/v/3-0/docs
  - https://www.relishapp.com/rspec/rspec-expectations/v/3-0/docs
  - https://www.relishapp.com/rspec/rspec-mocks/v/3-0/docs

[Rails Testing for Zombies](https://www.codeschool.com/courses/rails-testing-for-zombies)
(Unit Testing).


### SublimeText

[Sublime Text 2 Ruby Tests](https://github.com/maltize/sublime-text-2-ruby-tests#usage).


### Emacs 24

Install *rvm* and *rspec-mode* (copy snippets).

* `\C-c ,t` — toggle back and forth between a spec and it’s target
* `\C-c ,s` — verify the example defined at the point of the current buffer
* `\C-c ,v` — verify the spec file associated with the current buffer
* `\C-c ,a` — run spec for entire project

More:

* `\C-c ,d` — toggle the pendingness of the example at the point
  * disable the example at the point by making it pending
  * reenable the disabled example at the point
* `\C-c ,r` — re-run the last verification process
* `\C-c ,c` – run the current spec and all after it
* `\C-c ,m` — run all specs related to the current buffer


### Git

Push local branch named `foo` to Github:

```sh
git push origin foo
```


## Basic Ruby Practice

Check the documentation on

* [Array](http://www.ruby-doc.org/core-2.1.1/Array.html)
* [Hash](http://www.ruby-doc.org/core-2.1.1/Hash.html)
* [Enumerable](http://www.ruby-doc.org/core-2.1.1/Enumerable.html)

as they could help tremendously with these exercises.

Define a method `sum(array)` that takes an array of integers as an
argument and returns the sum of its elements. For an empty array it
should return zero.

Define a method `max_2_sum(array)` which takes an array of integers as
an argument and returns the sum of its two largest elements. For an
empty array it should return zero. For an array with just one element,
it should return that element.

Define a method `sum_to_n?(array)` that takes an array of integers and
an additional integer, n, as arguments and returns true if any two
elements in the array of integers sum to n. An empty array should sum
to zero by definition.

You can find starter code in `lib/part1.rb`. To run the "sanity
check" tests, run `rspec spec/part1_spec.rb` from the top-level
directory of the homework distribution. The line numbers in the error
report will give you guidance as to which tests failed.


## Strings and Regular Expressions

Check the documentation on

* [String](http://www.ruby-doc.org/core-2.1.1/String.html)
* [Regexp](http://www.ruby-doc.org/core-2.1.1/Regexp.html)

as they could help tremendously with these exercises.

Define a method `hello(name)` that takes a string representing a name
and returns the string "Hello, " concatenated with the name.

Define a method `starts_with_consonant?(s)` that takes a string and
returns true if it starts with a consonant and false otherwise. (For
our purposes, a consonant is any letter other than A, E, I, O, U.)
NOTE: be sure it works for both upper and lower case and for
nonletters!

Define a method `binary_multiple_of_4?(s)` that takes a string and
returns true if the string represents a binary number that is a
multiple of 4. NOTE: be sure it returns false if the string is not a
valid binary number!


You can find starter code in `lib/part1.rb`. To run the "sanity
check" tests, run `rspec spec/part1_spec.rb` from the top-level
directory of the homework distribution. The line numbers in the error
report will give you guidance as to which tests failed.


## Object Oriented Example

Define a class `BookInStock` which represents a book with an ISBN
number, `isbn`, and price of the book as a floating-point number,
`price`, as attributes.

The constructor should accept the ISBN number
(a string, since in real life ISBN numbers can begin with zero and can
include hyphens) as the first argument and price as second argument, and
should raise `ArgumentError` (one of Ruby's built-in exception types) if
the ISBN number is the empty string or if the price is less than or
equal to zero. Include the proper getters and setters for these
attributes.

Include a method `price_as_string` that returns the price of the book
formatted with a leading dollar sign and two decimal places, that is,
a price of 20 should format as "$20.00" and a price of 33.8 should
format as "$33.80".

You can find starter code in `lib/part3.rb`. To run the "sanity
check" tests, run `rspec spec/part3_spec.rb` from the top-level
directory of the homework distribution.  The line numbers in the error
report will give you guidance as to which tests failed.
