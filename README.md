# Rake on Rack

Rake on Rack provides a HTTP interface to execute a given Rakefile's tasks.

## Installation

Add this line to your application's Gemfile:

    gem 'rake_on_rack'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rake_on_rack

## Usage

```ruby
require 'rake_on_rack'

RakeOnRack.start path_to_rakefile, port
```

Just make a POST request to /task_name - the request body string is passed to
the task as arguments.

## Contributing

1. Fork it ( https://github.com/darnould/rake_on_rack/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
