# ConfigGemsInitializationAim

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/config_gems_initialization_aim`. To experiment with that code, run `bin/console` for an interactive prompt.

TODO: Delete this and the text above, and describe your gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'config_gems_initialization_aim'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install config_gems_initialization_aim

## Usage
Add config file for reek:

```bundle exec rake initialize:reek```

Add config file for gitlab:

```bundle exec rake initialize:gitlab```

Add config file for editorconfig:

```bundle exec rake initialize:editorconfig```

Add config file for  rubocop:

```bundle exec rake initialize:rubocop``` 

Initializetion all configs:

```bundle exec rake initialize:all```


## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/config_gems_initialization_aim.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
