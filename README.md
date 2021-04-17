# Spelling_Bee_Solver_CLI

Spelling Bee Solver CLI returns valid words to solve the New York Times Spelling Bee puzzle. Once prompted, the CLI generates a list of solutions to the daily puzzle. From there, you can input a word from the list of solutions to look up its definition. 

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'spelling_bee_solver_cli'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install spelling_bee_solver_cli

    To run the program:
    ruby bin/run

## Usage

To begin, enter ruby bin/run

After the welcome message, you will be asked to enter your name.

Next, the program will check to see if you'd like to retrieve solutions to the Spelling Bee puzzle. If yes or 'y', the program will prompt you to enter the daily puzzle's seven letters and then to enter just the center letter. If no or 'e', you are given the option to exit the program--The daily Spelling Bee puzzle letters can be accessed at https://www.nytimes.com/puzzles/spelling-bee.

Once the letters are entered, a list of valid words is returned in alphabetical order.

Following the generated list of solutions, the program will ask if you'd like to look up word definitions. You will be prompted to enter a word from the list to get that word's definition(s) until you opt to exit from the program.  

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spelling_bee_solver_cli.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
