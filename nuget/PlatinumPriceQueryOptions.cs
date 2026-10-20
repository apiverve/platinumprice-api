using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.PlatinumPrice
{
    /// <summary>
    /// Query options for the Platinum Price API
    /// </summary>
    public class PlatinumPriceQueryOptions
    {
        /// <summary>
        /// The currency to get the price in
        /// </summary>
        [JsonProperty("currency")]
        public string Currency { get; set; }

        /// <summary>
        /// Include hourly price data for the past 24 hours
        /// </summary>
        [JsonProperty("hourly")]
        public bool? Hourly { get; set; }
    }
}
