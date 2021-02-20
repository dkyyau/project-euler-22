# Project Euler Problem 22 - Names Scores

Original problem from [Project Euler](https://projecteuler.net/problem=22):

> Using [names.txt](https://projecteuler.net/project/resources/p022_names.txt) (right click and 'Save Link/Target As...'), a 46K text file containing over five-thousand first names, begin by sorting it into alphabetical order. Then working out the alphabetical value for each name, multiply this value by its alphabetical position in the list to obtain a name score.
>
> For example, when the list is sorted into alphabetical order, COLIN, which is worth 3 + 15 + 12 + 9 + 14 = 53, is the 938th name in the list. So, COLIN would obtain a score of 938 × 53 = 49714.
>
> What is the total of all the name scores in the file?

## Installation

This code requires [Ruby](https://www.ruby-lang.org/en/), [RubyGems](https://rubygems.org/) and [Bundler](https://bundler.io/) to be installed on your system. If you don't have them, follow the instructions on each website to install.

To install dependencies, run:

```ruby
bundle install
```

## Usage

The total of the names in the text file will be displayed in the terminal with:

```
rake run
```

or `ruby lib/names_scores.rb`

Tests can be run with:

```
rake test
```

or `rspec`

## Development and approach

This solution is broken down into five methods to get the total scores of the names in the given text file:

- read_file: Opens and reads the text file to return a string of all the names
- get_names: Splits the string into individual names and returns an array of names
- alphabetical_value: Calculates the alphabetical value of a given name
- name_score: Returns the name score of a name when given its position in an array
- total_scores: Returns the total score of all the names in an array of names

A test-driven development approach was taken with tests for the expected type and results for the methods written before the solution.

### Considerations

- The solution only works for the given text file and would not work with a text file with names in a different format
- The solution only works for uppercase names as it is the case for the given data
- A more concise solution for the problem can be written but a longer approach was taken so each part of the solution can be tested
- No tests were written for opening and reading a text file
