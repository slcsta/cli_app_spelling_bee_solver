# Spelling_Bee_Solver_CLI

Spelling Bee Solver CLI returns valid words to solve the New York Times Spelling Bee puzzle. Once prompted, the CLI generates a list of solutions to the daily puzzle. From there, you can look up word definitions. 

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

Spelling Bee Solver CLI employs the dotenv gem to protect API authorization keys. To run the CLI, you'll need to provide your own API key.

Get your personal API key by logging into WORDSAPI(the API source for this program: https://www.wordsapi.com/). Replace ENV['WORDS_API_KEY'] in the API call with your own key from Words API.

To start the program, enter 'ruby bin/run'

Follow the command line prompts for instructions on what to do next.

The program will ask if you'd like to retrieve solutions to the NY Times Spelling Bee puzzle. If yes, enter the Spelling Bee's seven letters and then enter the center letter. Or you can exit the program. The daily Spelling Bee puzzle letters can be accessed at https://www.nytimes.com/puzzles/spelling-bee.

Once the letters are entered, a list of valid words is returned in alphabetical order.

Following the generated list of solutions, the program will ask if you'd like to look up a definition. You can enter a word from the list to get its definition and continue to retrieve definitions until you opt to exit from the program.  

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/spelling_bee_solver_cli.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
