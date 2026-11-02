# Platinum Price API

Platinum Price retrieves real-time spot rates for platinum per troy ounce, gram, and kilogram. Each response reports prices in USD, 24-hour net price changes, direction markers, and update timestamps; paid plans add 172 currencies, 7- and 30-day changes, 30-day stats, and hourly and daily history.

[![npm version](https://img.shields.io/npm/v/@apiverve/platinumprice.svg)](https://www.npmjs.com/package/@apiverve/platinumprice)

This is a JavaScript wrapper for the [Platinum Price API](https://apiverve.com/marketplace/platinumprice?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Installation

Using npm:
```shell
npm install @apiverve/platinumprice
```

Using yarn:
```shell
yarn add @apiverve/platinumprice
```

---

## Configuration

Before using the Platinum Price API client, you have to setup your account and obtain your API Key.
You can get it by signing up at [https://apiverve.com](https://apiverve.com?utm_source=npm&utm_medium=referral&utm_content=readme)

---

## Quick Start

[Get started with the Quick Start Guide](https://docs.apiverve.com/quickstart?utm_source=npm&utm_medium=referral&utm_content=readme)

The Platinum Price API documentation is found here: [https://docs.apiverve.com/ref/platinumprice](https://docs.apiverve.com/ref/platinumprice?utm_source=npm&utm_medium=referral&utm_content=readme).
You can find parameters, example responses, and status codes documented here.

### Setup

```javascript
const platinumpriceAPI = require('@apiverve/platinumprice');
const api = new platinumpriceAPI({
    api_key: '[YOUR_API_KEY]'
});
```

---

## Usage

---

### Perform Request

Using the API is simple. All you have to do is make a request. The API will return a response with the data you requested.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query, function (error, data) {
    if (error) {
        return console.error(error);
    } else {
        console.log(data);
    }
});
```

---

### Using Promises

You can also use promises to make requests. The API returns a promise that you can use to handle the response.

```javascript
var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

api.execute(query)
    .then(data => {
        console.log(data);
    })
    .catch(error => {
        console.error(error);
    });
```

---

### Using Async/Await

You can also use async/await to make requests. The API returns a promise that you can use to handle the response.

```javascript
async function makeRequest() {
    var query = {
  currency: "USD",
  hourly: false,
  daily: false
};

    try {
        const data = await api.execute(query);
        console.log(data);
    } catch (error) {
        console.error(error);
    }
}
```

---

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

---

## Customer Support

Need any assistance? [Get in touch with Customer Support](https://apiverve.com/contact?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## Updates

Stay up to date by following [@apiverveHQ](https://twitter.com/apiverveHQ) on Twitter.

---

## Legal

All usage of the APIVerve website, API, and services is subject to the [APIVerve Terms of Service](https://apiverve.com/terms?utm_source=npm&utm_medium=referral&utm_content=readme) and [Privacy Policy](https://apiverve.com/privacy?utm_source=npm&utm_medium=referral&utm_content=readme).

---

## License
Licensed under the MIT License (MIT)

Copyright (&copy;) 2026 APIVerve, and EvlarSoft LLC

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
