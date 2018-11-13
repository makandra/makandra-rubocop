This gem holds makandra's default Rubocop configuration.
It is currently very relaxed, and will evolve over time.

Note that we lock each version on a specific Rubocop version, as Rubocop's syntax changes regularly.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'makandra-rubocop'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install makandra-rubocop

## Usage

Add `.rubocop.yml` to your project with the following contents:

```yaml
inherit_gem:
  makandra-rubocop: config/default.yml
```

Any per-project rules can then be defined in `.rubocop.yml`.

Then run Rubocop via `bundle exec rubocop` from your project.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

When upgrading the Rubocop version being used:

1. Get Rubocop's `default.yml`.
2. Compare changes on Rubocop's side.
3. Merge default configuration, but keep any custom configuration from this gem.

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/makandra/makandra-rubocop.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
