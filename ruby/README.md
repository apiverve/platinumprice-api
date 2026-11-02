# Platinum Price API - Ruby Gem

Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps; paid plans add 172 currencies, 7- and 30-day changes, 30-day stats, and hourly and daily history.

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
  hourly: true,
  daily: true
})

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ currency: "USD", hourly: true, daily: true })
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
    "gram": 49,
    "kilogram": 49002.49,
    "ounce": 1524.15,
    "lastUpdated": "2026-10-27T12:00:00.000Z",
    "change24h": -26.85,
    "change24hPct": -1.73,
    "changeDirection": "down",
    "high24h": 1551,
    "low24h": 1524.15,
    "change7d": -128.26,
    "change7dPct": -7.76,
    "change30d": -257.83,
    "change30dPct": -14.47,
    "high30d": 1741.14,
    "low30d": 1524.15,
    "average30d": 1657.79,
    "volatility30d": 1.3684,
    "daily": [
      {
        "date": "2026-09-28",
        "price": 1736.65
      },
      {
        "date": "2026-09-29",
        "price": 1696.31
      },
      {
        "date": "2026-09-30",
        "price": 1708.24
      },
      {
        "date": "2026-10-01",
        "price": 1726.99
      },
      {
        "date": "2026-10-02",
        "price": 1741.14
      },
      {
        "date": "2026-10-03",
        "price": 1700.49
      },
      {
        "date": "2026-10-04",
        "price": 1700.48
      },
      {
        "date": "2026-10-05",
        "price": 1709.22
      },
      {
        "date": "2026-10-06",
        "price": 1711
      },
      {
        "date": "2026-10-07",
        "price": 1690.44
      },
      {
        "date": "2026-10-08",
        "price": 1662.63
      },
      {
        "date": "2026-10-09",
        "price": 1684.48
      },
      {
        "date": "2026-10-10",
        "price": 1693.49
      },
      {
        "date": "2026-10-11",
        "price": 1693.48
      },
      {
        "date": "2026-10-12",
        "price": 1694.68
      },
      {
        "date": "2026-10-13",
        "price": 1696.85
      },
      {
        "date": "2026-10-14",
        "price": 1665.67
      },
      {
        "date": "2026-10-15",
        "price": 1607.15
      },
      {
        "date": "2026-10-16",
        "price": 1645.64
      },
      {
        "date": "2026-10-17",
        "price": 1635.98
      },
      {
        "date": "2026-10-18",
        "price": 1635.98
      },
      {
        "date": "2026-10-19",
        "price": 1656.74
      },
      {
        "date": "2026-10-20",
        "price": 1652.41
      },
      {
        "date": "2026-10-21",
        "price": 1641.24
      },
      {
        "date": "2026-10-22",
        "price": 1597.03
      },
      {
        "date": "2026-10-23",
        "price": 1570.05
      },
      {
        "date": "2026-10-24",
        "price": 1551.99
      },
      {
        "date": "2026-10-25",
        "price": 1552
      },
      {
        "date": "2026-10-26",
        "price": 1551
      },
      {
        "date": "2026-10-27",
        "price": 1524.15
      }
    ],
    "marketStatus": "open",
    "formatted": {
      "ounce": "$1,524.15",
      "gram": "$49.00",
      "kilogram": "$49,002.49",
      "ounceWords": "one thousand, five hundred twenty-four dollars",
      "kilogramWords": "forty-nine thousand, two dollars"
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
