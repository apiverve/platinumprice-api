# Platinum Price API - Ruby Gem

Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps, with paid plans supporting 172 currencies.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_platinumprice'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_platinumprice
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_platinumprice'

# Initialize the client
client = APIVerve::Platinumprice::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({
  currency: "USD",
  hourly: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "USD", hourly: true })
  puts response["data"]
rescue APIVerve::Platinumprice::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Platinumprice::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Platinumprice::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "currency": "USD",
    "gram": 51.62,
    "kilogram": 51617.99,
    "ounce": 1605.5,
    "lastUpdated": "2026-02-07T12:00:00.000Z",
    "change24h": 12.3,
    "change24hPct": 0.77,
    "changeDirection": "up",
    "high24h": 1618,
    "low24h": 1592.4,
    "formatted": {
      "ounce": "$1,605.50",
      "gram": "$51.62",
      "kilogram": "$51,617.99",
      "ounceWords": "one thousand, six hundred six dollars",
      "kilogramWords": "fifty-one thousand, six hundred eighteen dollars"
    }
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/platinumprice?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/platinumprice?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/platinumprice?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
