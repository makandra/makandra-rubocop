All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## Unreleased

### Breaking changes

### Compatible changes


## 5.4.0 - 2020-08-05

### Breaking changes

### Compatible changes

- Disable `RSpec/SubjectStub`


## 5.3.0 - 2020-07-10

### Breaking changes

### Compatible changes

- Disable `RSpec/NamedSubject`


## 5.2.0 - 2020-07-06

### Breaking changes

### Compatible changes

- Disable `RSpec/LetSetup`


## 5.1.0 - 2020-06-29

### Breaking changes

### Compatible changes

- Add [rubocop-rspec](https://github.com/rubocop-hq/rubocop-rspec)
  
  You can add it to a project like this:
  
  ```yaml
  inherit_gem:
    makandra-rubocop:
      - config/default.yml
      - config/ext/rspec.yml
  ```
- Disable the `Style/ClassCheck` cop (#22)


## 5.0.0 - 2020-04-07

### Breaking changes

- Upgrade `rubocop`
- Upgrade `rubocop-rails`

Migration notes:

In case you are using a project with Ruby < 2.5 you need to add these lines to your `.rubocop.yml`:

```
Style/HashTransformKeys:
  Enable: false # Disabled until Ruby 2.5 upgrade

Style/HashTransformValues:
  Enable: false # Disabled until Ruby 2.5 upgrade
```


## 4.4.0 - 2020-04-06

### Breaking changes

### Compatible changes

- Disable `Lint/EmptyWhen` (#18)
- Disable `Naming/RescuedExceptionsVariableName` (#19)


## 4.3.0 - 2020-02-13

### Compatible changes

- Temporary disable `Layout/RescueEnsureAlignment` again, rubocop-hq/rubocop#6771 seems not to have fixed the issue
in our 4.0.0 release.


## 4.2.0 - 2020-01-02

### Compatible changes

- Disable `Rails/HelperInstanceVariable`
- Disable `Rails/HasManyOrHasOneDependent`


## 4.1.0 - 2019-12-06

### Compatible changes

- Disable Rails/UnknownEnv cop


## 4.0.0 - 2019-12-06

### Breaking changes

- Upgrade to Rubocop 0.76.0
- Drop support for Ruby < 2.3.0

Rubopcop 0.72.0 extracts all its Rails helpers to a new gem. This results in two split config files in the
`makandra-rubocop` gem:

- config/default.yml (contains now only Ruby cops)
- config/ext/rails.yml (contains all Rails cops)

Enabling the Rails cops was and is optional in `makandra-rubocop`. In case you want to use the Ruby cops only, please
use the following config as before:

```
inherit_gem:
  makandra-rubocop:
    - config/default.yml
```

In case you want to use the Ruby and the Rails cops:

1\. Remove the following config (if present) from your `.rubocop.yml`:

```
Rails:
  Enabled: true
```

2\. Change the beginning of your `.rubocop.yml`:

```
inherit_gem:
  makandra-rubocop:
    - config/default.yml
    - config/ext/rails.yml
```

### Compatible changes

- Use `Rspec.describe` instead of `describe` in the shared spec to support projects, that have the RSpec monkey patch disabled


## 3.2.1 - 2019-11-14

### Compatible changes

- Update bundler to version 2 (only for development)


## 3.2.0 - 2019-07-29

### Compatible changes

- Exclude files in `tmp` and `public/system`.


## 3.1.0 - 2019-02-29

### Compatible changes

- Disable `Layout/SpaceAfterColon` (#6)
- Disable `Layout/RescueEnsureAlignment` (#7)


## 3.0.0 - 2019-02-28

### Breaking changes

- Upgrade Rubocop from 0.62.0 to [0.65.0](https://github.com/rubocop-hq/rubocop/blob/2e52af0e33cc6387f7c8495b52f66c8f2f46a804/CHANGELOG.md#0650-2019-02-19)

### Compatible changes

- Disable `Style/MultilineBlockChain` for `spec/**/*`
- Disable `Layout/ClosingParenthesisIndentation`


## 2.0.0 - 2019-01-31

### Breaking changes

- We updated the Cop `Layout/SpaceInsideHashLiteralBraces`. Braces used for hash literals now should have surrounding space:
  ```
  # bad
  h = {a: 1, b: 2}

  # good
  h = { a: 1, b: 2 }
  ```
  Run `bundle exec rubocop --auto-correct` to upgrade your project.


## 1.0.0 - 2019-01-15

### Compatible changes

- First release of our default rule set. See README on how to integrate with your project.
- Rubocop 0.62.0
