All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).

## Unreleased

### Breaking changes
-

### Compatible changes
- Style/SafeNavigation: set MaxChainLength to 1 (#55)

## 15.0.0 - 2025-01-20

### Breaking changes
- Upgrade to `rubocop` 1.70 (was 1.61)
- Disable new cop `Style/CombinableDefined`

### Compatible changes
- Add Support for Ruby 3.4


## 14.0.1 - 2024-09-12

### Compatible changes

- Fix `rubocop` 1.61 dependency to avoid upgrading to newer rubocop releases.


## 14.0.0 - 2024-08-07

## Compatible changes

- Disable `Capybara/ClickLinkOrButtonStyle` (#49)

## Breaking changes 

- Upgrade to `rubocop-rspec` 3.0.3 (was 2.25.0)
- Upgrade to `rubocop` 1.61 (was 1.60)


## 13.0.0 - 2024-05-27

### Breaking changes

- Upgrade to `rubocop-rspec` 2.25.0 (was 2.13.2)
- Disable nested cops introduced by dependencies (e.g. Rspec/Capybara).
  Since the config for the respective gem should be considered the single source of truth


## 12.1.0 - 2024-01-07

### Compatible changes

- Add default configuration for `rubocop-capybara` and `rubocop-factory_bot`


## 12.0.0 - 2024-01-17

### Compatible changes

- Supports Ruby 3.3 and Rails 7.1.

### Breaking changes

- Upgrade to `rubocop` 1.60.0 (was 1.39.0)
- Upgrade to `rubocop-rails` 2.23.1 (was 2.19.0)
- Drop support for Ruby 2.6 (following change from `rubocop` 1.51.0)


## 11.2.0 - 2023-10-18

### Compatible changes

- Enable `Lint/Debugger` (#42)


## 11.1.0 - 2023-04-26

### Compatible changes

-  Disable `RSpec/Capybara/SpecificFinders` (#41)


## 11.0.0 - 2023-04-12

### Breaking changes

- Upgrade `rubocop-rails` from version `2.17.2` to `2.19.0`.


## 10.0.0 - 2022-11-09 

### Breaking changes
- Upgrade `rubocop` from version `1.25.1` to `1.39.0`.
- Upgrade `rubocop-rails` from version `2.11.3` to `2.17.2`.
- Upgrade `rubocop-rspec` from version `2.4.0` to `2.13.2`.
- Drop Support for Ruby < `2.6`


## 9.1.0 - 2022-04-22

### Compatible changes

- Disable `Naming/BlockForwarding` (#37)
- Change `Style/HashSyntax` from `EnforcedShorthandSyntax` `always` to `either` (#36)


## 9.0.1 - 2022-03-09

### Compatible changes

-  Activate Rubygems MFA


## 9.0.0 - 2022-02-09

### Breaking changes

- Changed `Rails/RequestReferer` from `EnforcedStyle` `referer` to `referrer`

### Compatible changes


## 8.0.0 - 2022-01-25

## Breaking changes
- Upgrade rubocop from version `1.18.4` to `1.25.1` (adds support for Ruby 3.1).


## 7.2.0 - 2021-12-07

### Compatible changes

- Disable `Rails/LinkToBlank`


## 7.1.0 - 2021-11-29

### Compatible changes

- Disable `RSpec/ExpectChange`


## 7.0.0 - 2021-09-16

### Breaking changes

- Dropped support for Ruby < `2.5.0`.
- Upgrade `rubocop` from version `1.9.1` to `1.18.4`.
- Upgrade `rubocop-rails` from version `2.9.1` to `2.11.3`.
- Upgrade `rubocop-rspec` from version `2.2.0` to `2.4.0`.


## 6.2.0 - 2021-06-20

### Compatible changes

- Use the format `simple` output, and not `progress`.
- Also output stdout if stderr is present. Otherwise warnings like
whitequark/parser will block the actual offenses message to be skipped.
Originally we thought the only stderr message will be a failure of
rubocop itself, so there would be never a stdout, too.

  **Before**:

  ```
  1) rubocop has no offenses
    Failure/Error: example.run

    warning: parser/current is loading parser/ruby26, which recognizes
    warning: 2.6.7-compliant syntax, but you are running 2.6.5.
    warning: please see https://github.com/whitequark/parser#compatibility-with-ruby-mri.
    # ./spec/support/with_power.rb:11:in `block (2 levels) in <top (required)>'
    # ./spec/support/vcr.rb:16:in `block (2 levels) in <top (required)>'
    # ./spec/support/database_cleaner.rb:21:in `block (2 levels) in <top (required)>'
  ```

  **After:**

  ```
  1) rubocop has no offenses
    Failure/Error: example.run

    warning: parser/current is loading parser/ruby26, which recognizes
    warning: 2.6.7-compliant syntax, but you are running 2.6.5.
    warning: please see https://github.com/whitequark/parser#compatibility-with-ruby-mri.

    == app/user/search.rb ==
    C:  5:  3: [Correctable] Layout/IndentationWidth: Use 2 (not 5) spaces for indentation.

    1016 files inspected, 1 offense detected, 1 offense auto-correctable
    # ./spec/support/with_power.rb:11:in `block (2 levels) in <main>'
    # ./spec/support/vcr.rb:16:in `block (2 levels) in <main>'
    # ./spec/support/database_cleaner.rb:21:in `block (2 levels) in <main>'
  ```


## 6.1.0 - 2021-04-30

### Compatible changes

- Disable `Style/AccessorGrouping`


## 6.0.0 - 2021-02-25

### Breaking changes

- Upgrade `rubocop` from version `0.81.0` to `1.9.1`
  - Re-enable `Layout/RescueEnsureAlignment` as the bug seems to be fixed in `1.9.1`
  - Add most of the new cops from `1.9.1`
- Upgrade `rubocop-rails` from version `2.5.1` to `2.9.1`
- Upgrade `rubocop-rspec` from version `2.2.0` to `1.40.0`


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
