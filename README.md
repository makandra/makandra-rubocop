This gem holds makandra's default Rubocop configuration.
It is currently very relaxed, and will evolve over time.

Note that we lock each version on a specific Rubocop version, as Rubocop's syntax changes regularly.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'makandra-rubocop'
```

And then execute:

```
$ bundle
```

Or install it yourself as:

```
$ gem install makandra-rubocop
```


## Usage

Add a `.rubocop.yml` to your project with the following contents:

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

**For RSpec**

```yaml
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/rspec.yml
```

**For Capybara**

```yaml
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/capybara.yml
```

**For Factory Bot**

```yaml
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/factory_bot.yml
```

Any per-project rules can then be defined in the `.rubocop.yml`:

```yaml
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/rails.yml

AllCops:
  Exclude:
    - 'lib/assets/**/*'

Layout/MultilineArrayLineBreaks:
  Enabled: true
```

It also might be desired to set `inherit_mode`, which specifies which configuration keys that have
array values should be merged together instead of overriding the inherited value:

```yaml
inherit_mode:
  merge:
    - Exclude
```

### Executing Rubocop on demand
Run Rubocop via `bundle exec rubocop` from your project directory.

For an initial run it might also useful to use the auto-correct option (`bundle exec  rubocop --auto-correct`) and carefully check in all changes.
You can follow [this guide](https://makandracards.com/makandra/400093-adding-makandra-rubocop-to-an-existing-code-base) for bigger projects.

### Integrating Rubocop into your test suite
We recommend you add an RSpec test that runs rubocop automatically and confirms that there are no offenses.
This gem provides one. Simply add `spec/rubocop_spec.rb` to your project with the following code.

```ruby
require 'makandra_rubocop/support/rubocop_spec'
```

### Configuring exceptions
Some of our defaults might not fit your project. You can disable specific cops or add exclusions to `.rubocop.yml` in such cases. You basically have two options:

- Disable cops for specific lines using [Ruby comments in your code](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md#disabling-cops-within-source-code), like so:

```ruby
for x in (0..19) # rubocop:disable Style/For
```

- Disable entire files by [adding exclusions](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md#cop-specific-include-and-exclude) to `.rubocop.yml`, like so:

```yaml
Style/For:
  Exclude:
    - app/models/example.rb
```

See [Rubocop's configuration manual](https://github.com/rubocop-hq/rubocop/blob/master/manual/configuration.md) for more information.

Note that disabling cops should be an exception for extremely rare cases where your code can not be aligned with Rubocop's requirements.
If our defaults don't match your opinion, you should discuss with the team.


## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/makandra/makandra-rubocop.

If you make any changes to this gem's Ruby code, make sure to run `rubocop`.


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

When you're making changes, update the version number in `version.rb`:
- Increase the major version when you're upgrading a Rubocop dependency (see below)
- Increase the minor version e.g. when disabling a cop

For release run `bundle exec rake release`, which will create a git tag for the
version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Upgrading Rubocop dependencies
The following procedure works for either `rubocop`, `rubocop-rails` or
`rubocopo-rspec`. (Replace `rubocop` with the respective dependency name.)

1. Change the `rubocop` dependency in the Gemspec to the version you want to
   upgrade to.
2. `bundle update rubocop`

Next, we need to update our config file to match their updated config. If
you have not added the Rubocop remote yet (check with `git remote -v`), do a
`git remote add rubocop https://github.com/rubocop-hq/rubocop.git`. Then:

1. Update the local copy of the Rubocop repository: `git fetch rubocop --no-tags`
   (we can't import their tags or they would clash with ours)
2. Find the commit SHA of the previous and of the new Rubocop version in our
   Gemspec. The easiest way is to look them up on their [releases page](https://github.com/rubocop/rubocop/releases).
3. Diff their config/default.yml between the previously used and the new Rubocop
   version, and write it to a file: `git diff $OLDER_SHA $NEWER_SHA config/default.yml > config_diff`
4. If you are updating `rubocop-rails` or `rubocop-rspec`, edit the config_diff
   file now and replace `config/default.yml` with `config/ext/{rails,rspec}.yml`
   (respectively).
5. Apply the diff with `git apply ./config_diff --3way`
6. Resolve merge conflicts carefully and review all changes. We do not want to
   loose changes in [our config files](https://github.com/makandra/makandra-rubocop/tree/master/config).
7. Delete the patch file
8. Increase the major version (see above)
9. Update the CHANGELOG
10. Commit


## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
