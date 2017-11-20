# bootstrap4-tableexpanderjs-rails

Hey there!
This gem sets up a sweet, little and customizable CoffeeScript that let's you collapse and expand your Bootstrap4 HTML5 tables.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'bootstrap4-tableexpanderjs-rails', git: 'https://github.com/simonneutert/bootstrap4-tableexpanderjs-rails'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bootstrap4-tableexpanderjs-rails

## Usage

add this line to `app/assets/javascripts/application.js` right before `//= require_tree .`

``` JavaScript
//= require bootstrap4-tableexpanderjs-rails
```

add `.table-expandable` to the table you wish to extend with the script

## Customization

By setting the following data tags you can customize the user experience:

* **data-table-expandable-more** sets the text for showing more
* **data-table-expandable-less** sets the text for showing less
* **data-table-expandable-items** sets value when to cut the table
* **table-expandable-showmore-button** styles the "show more" button, set your button/ badge classes

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/simonneutert/bootstrap4-tableexpanderjs-rails.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
