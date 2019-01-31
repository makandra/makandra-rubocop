All notable changes to this project will be documented in this file.

This project adheres to [Semantic Versioning](http://semver.org/spec/v2.0.0.html).


## Unreleased

### Breaking changes

-

### Compatible changes

-

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
