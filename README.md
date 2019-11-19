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

**For Ruby**

```yaml
inherit_gem:
  makandra-rubocop: config/default.yml
```

**For Rails**

```yaml
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/rails.yml
```

Any per-project rules can then be defined in `.rubocop.yml`.

### Executing Rubocop on demand

Run Rubocop via `bundle exec rubocop` from your project directory.

For an initial run it might also useful to use the auto-correct option (`bundle exec  rubocop --auto-correct`) and carefully check in all changes.

### Integrating Rubocop into your test suite

We recommend you add an RSpec test that runs rubocop automatically and confirms that there are no offenses.
This gem provides one. Simply add `spec/rubocop_spec.rb` to your project with the following code.

```
require 'makandra_rubocop/support/rubocop_spec'
```

### Configuring exceptions

Some of our defaults might not fit your project. You can disable specific cops or add exclusions to `.rubocop.yml` in such cases. You basically have two options:

- Disable cops for specific lines using [Ruby comments in your code](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md#disabling-cops-within-source-code), like so:

      for x in (0..19) # rubocop:disable Style/For

- Disable entire files by [adding exclusions](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md#cop-specific-include-and-exclude) to `.rubocop.yml`, like so:

      Style/For:
        Exclude:
          - app/models/example.rb

See [Rubocop's configuration manual](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md) for more information.

Note that disabling cops should be an exception for extremely rare cases where your code can not be aligned with Rubocop's requirements.
If our defaults don't match your opinion, you should discuss with the team.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Upgrading Rubocop version being used

1. Change `rubocop` dependency in gemspec to the release you want to upgrade to.
2. `bundle`
3. `git add remote rubocop https://github.com/rubocop-hq/rubocop.git`
4. `git fetch rubocop --no-tags` (we can't import their tags or they would clash with ours)
5. Find out the commit SHA of the release you put into the gemspec.
6. `git checkout COMMIT_SHA config/default.yml`
7. `git reset` to unstage the changes you just picked
8. Review all changes and stage those that you want. Note that cop settings will be reverted to their default settings and that you do not want to add them all.
9. Commit.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/makandra/makandra-rubocop.

If you make any changes to this gem's Ruby code, make sure to run `rubocop`.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
