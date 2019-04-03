All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).


## Unreleased

### Breaking changes

-

### Compatible changes

-


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
