# Platinum Price API - PHP Package

Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps, with paid plans supporting 172 currencies.

## Installation

Install via Composer:

```bash
composer require apiverve/platinumprice
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Platinumprice\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute([
    'currency' => 'USD',
    'hourly' => true
]);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Platinumprice\Client;
use APIVerve\Platinumprice\Exceptions\APIException;
use APIVerve\Platinumprice\Exceptions\ValidationException;

try {
    $response = $client->execute(['currency' => 'USD', 'hourly' => true]);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/platinumprice?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/platinumprice?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/platinumprice?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
