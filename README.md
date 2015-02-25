# UniversalValidators

Library to validate: 

* date
* date_time
* ip address
* mac address

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'universal_validators'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install universal_validators

## Usage

Date validation:

```ruby
date = UniversalValidators::DateValidator.new('2015-02-25')
date.valid?
=> true
```

DateTime validation:

```ruby
date_time = UniversalValidators::DateTimeValidator.new('2015-02-25 12:33')
date_time.valid?
=> true
```

Ip address validation (without netmask):

```ruby
ip = UniversalValidators::IpValidator.new('127.0.0.1')
ip.valid?
=> true
```

Ip address validation (with netmask):

```ruby
ip = UniversalValidators::IpValidator.new('127.0.0.1/32', true)
ip.valid?
=> true
```

Mac address validation:

```ruby
mac = UniversalValidators::MacAddressValidator.new('00:0A:CD:00:CC:FE')
mac.valid?
=> true
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
