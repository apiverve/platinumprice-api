Platinum Price API
============

Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps, with paid plans supporting 172 currencies.


[![PyPI version](https://img.shields.io/pypi/v/apiverve-platinumprice.svg)](https://pypi.org/project/apiverve-platinumprice/)

This is a Python wrapper for the [Platinum Price API](https://apiverve.com/marketplace/platinumprice?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Installation

Using `pip`:

```bash
pip install apiverve-platinumprice
```

Using `pip3`:

```bash
pip3 install apiverve-platinumprice
```

---

## Configuration

Before using the Platinum Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=pypi&utm_medium=referral&utm_content=readme)

---

## Quick Start

Here's a simple example to get you started quickly:

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient

# Initialize the client with your APIVerve API key
api = PlatinumpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true
}

try:
    # Make the API call
    result = api.execute(query)

    # Print the result
    print(result)
except Exception as e:
    print(f"Error: {e}")
```

---

## Usage

The Platinum Price API documentation is found here: [https://docs.apiverve.com/ref/platinumprice](https://docs.apiverve.com/ref/platinumprice?utm_source=pypi&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```python
# Import the client module
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient

# Initialize the client with your APIVerve API key
api = PlatinumpriceAPIClient("[YOUR_API_KEY]")
```

---

## Perform Request

Using the API client, you can perform requests to the API.

###### Define Query

```python
query = {
    "currency": "USD",
    "hourly": true
}
```

###### Simple Request

```python
# Make a request to the API
result = api.execute(query)

# Print the result
print(result)
```

###### Example Response

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

---

## Error Handling

The API client provides comprehensive error handling through the `PlatinumpriceAPIClientError` exception. Here are some examples:

### Basic Error Handling

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient, PlatinumpriceAPIClientError

api = PlatinumpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true
}

try:
    result = api.execute(query)
    print("Success!")
    print(result)
except PlatinumpriceAPIClientError as e:
    print(f"API Error: {e.message}")
    if e.status_code:
        print(f"Status Code: {e.status_code}")
    if e.response:
        print(f"Response: {e.response}")
```

### Handling Specific Error Types

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient, PlatinumpriceAPIClientError

api = PlatinumpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true
}

try:
    result = api.execute(query)

    # Check for successful response
    if result.get('status') == 'success':
        print("Request successful!")
        print(result.get('data'))
    else:
        print(f"API returned an error: {result.get('error')}")

except PlatinumpriceAPIClientError as e:
    # Handle API client errors
    if e.status_code == 401:
        print("Unauthorized: Invalid API key")
    elif e.status_code == 429:
        print("Rate limit exceeded")
    elif e.status_code >= 500:
        print("Server error - please try again later")
    else:
        print(f"API error: {e.message}")
except Exception as e:
    # Handle unexpected errors
    print(f"Unexpected error: {str(e)}")
```

### Using Context Manager (Recommended)

The client supports the context manager protocol for automatic resource cleanup:

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient, PlatinumpriceAPIClientError

query = {
    "currency": "USD",
    "hourly": true
}

# Using context manager ensures proper cleanup
with PlatinumpriceAPIClient("[YOUR_API_KEY]") as api:
    try:
        result = api.execute(query)
        print(result)
    except PlatinumpriceAPIClientError as e:
        print(f"Error: {e.message}")
# Session is automatically closed here
```

---

## Advanced Features

### Debug Mode

Enable debug logging to see detailed request and response information:

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient

# Enable debug mode
api = PlatinumpriceAPIClient("[YOUR_API_KEY]", debug=True)

query = {
    "currency": "USD",
    "hourly": true
}

# Debug information will be printed to console
result = api.execute(query)
```

### Manual Session Management

If you need to manually manage the session lifecycle:

```python
from apiverve_platinumprice.apiClient import PlatinumpriceAPIClient

api = PlatinumpriceAPIClient("[YOUR_API_KEY]")

query = {
    "currency": "USD",
    "hourly": true
}

try:
    result = api.execute(query)
    print(result)
finally:
    # Manually close the session when done
    api.close()
```

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=pypi&utm_medium=referral&utm_content=readme).

---

## Updates
Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=pypi&utm_medium=referral&utm_content=readme) and all legal documents and agreements.

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
