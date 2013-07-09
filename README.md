# ClassCacher

TODO: Write a gem description

## Installation

Add this line to your application's Gemfile:

    gem 'class_cacher'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install class_cacher

## Usage
```ruby
class User < ActiveRecord::Base
  include ClassCacher
end
```
then use it like this User.unique_class_cache_key or even better User.cached_unique_class_cache_key

Shuold be used together with memcached and the dalli gem (or similar)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
