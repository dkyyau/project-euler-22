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
`rake run` or `ruby lib/names_scores.rb`

Tests can be run with:
`rake test` or `rspec`
