# ClassCacher

Generates a unique cache key for Rails classes

[![Build Status](https://travis-ci.org/casiodk/class_cacher.png?branch=master)](https://travis-ci.org/casiodk/class_cacher)

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
  unique_class_cache
end
```
then use it like this 

```ruby
User.unique_class_cache_key
```

or even better

```ruby
User.cached_unique_class_cache_key
```

Should be used together with memcached and the dalli gem (or similar)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
