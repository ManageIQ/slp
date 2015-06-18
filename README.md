# SLP

Ruby binding to OpenSLP (Service Location Protocol) library.

[![Gem Version](https://badge.fury.io/rb/slp.svg)](http://badge.fury.io/rb/slp)
[![Build Status](https://travis-ci.org/ManageIQ/slp.svg)](https://travis-ci.org/ManageIQ/slp)
[![Dependency Status](https://gemnasium.com/ManageIQ/slp.svg)](https://gemnasium.com/ManageIQ/slp)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'slp'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install slp

## Usage

`SLP` supports the following instance methods.

- open (on initialize)
- close
- find_services
- find_attributes
- parse_service_url

See [examples](examples)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/ManageIQ/slp.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
