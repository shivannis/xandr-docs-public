---
Title : Logistic Regression Model API Resources
Description : The purpose of this document is to serve as a temporary API resource for
the Data Science Toolkit services that allow for the creation of
Logistic Regression models, Lookup tables, and Hashed Table Predictors.
---


# Logistic Regression Model API Resources



The purpose of this document is to serve as a temporary API resource for
the Data Science Toolkit services that allow for the creation of
Logistic Regression models, Lookup tables, and Hashed Table Predictors.



## Descriptor list

**Scalar Descriptor**

**Type: **



- `"scalar_descriptor"`



**Features:**

- `appnexus``_audited`
- `cookie_age`
- `estimated_average_price`
- `estimated_clearing_price`
- `predicted_iab_view_rate`
- `predicted_video_completion_rate`
- `self_audited`
- `size`
- `creative_size`
- `spend_protection`
- `uniform`
- `user_age`



Note: The `size` descriptor is
represented as a string in your models ("300x250", for instance), though
converted to a scalar in our bidder. Any size is technically valid in
our system, hence this feature being treated as a scalar rather than a
categorical feature.



**Example**:

``` pre
{
        "type": "scalar_descriptor",
    "feature_keyword": "cookie_age",
    "default_value": 0,               //Value returned by the descriptor if no match is found
    "initial_range_log": 4,           //Used for log bucketing, initial range
    "bucket_count_log_per_range": 2   //used for log bucketing, # of buckets per range
}
```

**Segment Descriptor**

**Type:**

- `"segment_descriptor"`

**Features:**

- `segment_value `
- `segment_age`
- `segment_presence `

**Example:**

``` pre
{
    "type": "segment_descriptor",
    "feature_keyword": "segment_age",
    "segment_id": 2,                  //ID of referenced segment
    "default_value": 0,               //Value returned by the descriptor if no match is found
    "initial_range_log": 4,           //Used for log bucketing, initial range
    "bucket_count_log_per_range": 2   //used for log bucketing, # of buckets per range
}
```

**Frequency/Recency Descriptor**



**Type:**

- `"frequency_recency_descriptor"`



**Features:**

- `frequency_life`
- `frequency_daily`
- `recency`



**Available object types for this descriptor**:

- `advertiser`
- `line_item`
- `campaign`



**Example:**

``` pre
{
    "type": "frequency_recency_descriptor",
    "feature_keyword": 'frequency_life',
    "object_type": 'advertiser',
    "object_id": 1,                   //ID of the referenced advertiser, 
    "default_value": 0,               //Value returned by the descriptor if no match is found
    "initial_range_log": 4,           //Used for log bucketing, initial range
    "bucket_count_log_per_range": 2   //used for log bucketing, # of buckets per range
}
```

**Categorical Descriptor**



**Type:**

- `"categorical_descriptor"`



**Features:**

- `country`
- `region`
- `city`
- `dma`
- `postal_code`
- `user_day`
- `user_hour`
- `os_family`
- `os_extended`
- `browser`
- `language`
- `user_gender`
- `domain `
- `ip_address `
- `position`
- `placement`
- `placement_group`
- `publisher`
- `seller_member_id `
- `supply_type `
- `device_type`
- `device_model `
- `carrier`
- `mobile_app`
- `mobile_app_instance`
- `mobile_app_bundle`
- `appnexus``_intended_audience `
- `seller_intended_audience`
- `spend_protection`
- `user_group_id`
- `advertiser_id `
- `brand_category`
- `creative`
- `inventory_url_id `
- `media_type`

**Example:**

``` pre
{
    "type": "categorical_descriptor",
    "feature_keyword": "city"
}
```

**Hash Table Descriptor**

**Type:**

- `"hashed"`

**Example:**

``` pre
{
    "type": "hashed",
    "keys": [ array of one to 5 descriptors in this list:
        scalar_descriptor,
        custom_model_descriptor,
        freq_rec_descriptor,
        segment_descriptor,
        categorical_descriptor
    ],
    "hash_seeds": [42, 42, 42, 42, 42, 42],  //Seeds used when passed to Murmurhash3_x64_128 function, only first one is used for now, array is for planned future hash functions that need more than one seed
    "hash_id": <existing hash table ID>,
    "default_value": 0,                      //Value returned by the descriptor if no match is found in your hash table
    "hash_table_size_log": 20                //log of maximum value for a key of your table. Values larger than 2^hash_table_size_log will be rejected. Max for hash_table_size_log is 64 (no bucketing)
}
```





## Hash Tables

This endpoint is to submit a pre-hashed table. `bucket_index0` and
`bucket_index1`, each 64 bits long, are there to support hashing
algorithms that produce long values as keys. Currently, we only support
one hashing algorithm: `MurmurHash3_x64_128`, which will create two 64
bit integers but we only use the lower 64 bits of the hash.

Values in `bucket_index0` must always be smaller than
`(2 ^ hash_table_size_log)` or they will get rejected

Currently, the values in `bucket_index1` are ignored as this is to be
used for future expansion. If a value is sent for `bucket_index1`, it
must be `0`. The parameter is optional.

**Hash Table Keys**

For each of your Hash Table keys, you will need a uint32 value. These
values should be the ID of respective object that you are referencing
from our system - `domain_id`, for instance, rather than the domain
string value. These uint32 keys are then transformed into a byte array
(little-endian), and hashed. 

**Example**

**Python Example**

`hash_bucket = (mmh3.hash64(bytes, seed)[0]) % table_size`





## Logit Function

Model creation and update are similar, same request format is to be used
for both.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012ef__entry__1"
class="entry colsep-1 rowsep-1">Method</th>
<th id="ID-000012ef__entry__2"
class="entry colsep-1 rowsep-1">Endpoint</th>
<th id="ID-000012ef__entry__3"
class="entry colsep-1 rowsep-1">Purpose</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__1">GET</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__2"><code
class="ph codeph">/custom-model-logit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__3">Retrieve a Logit function associated
with the parameters provided.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__1">PUT</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__2"><code
class="ph codeph"> /custom-model-logit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__3">Update an existing Logit function with
data in the JSON payload.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__1">POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__2"><code
class="ph codeph">/custom-model-logit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__3">Create a new Logit function from data in
the JSON payload.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__1">DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__2"><code
class="ph codeph">/custom-model-logit</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__3">Delete an existing Logit function
matching the parameters provided.</td>
</tr>
</tbody>
</table>

**Parameters**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-000012ef__entry__16"
class="entry colsep-1 rowsep-1">Name</th>
<th id="ID-000012ef__entry__17" class="entry colsep-1 rowsep-1">Data
Type</th>
<th id="ID-000012ef__entry__18"
class="entry colsep-1 rowsep-1">Parameter Type</th>
<th id="ID-000012ef__entry__19" class="entry colsep-1 rowsep-1">Required
On</th>
<th id="ID-000012ef__entry__20"
class="entry colsep-1 rowsep-1">Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__16">id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__18">Query</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__19">GET, PUT, DELETE</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__20">?id=1</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__16">member_id</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__17">int</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__18">Query</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__19">PUT, POST</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-000012ef__entry__20">?member_id=1</td>
</tr>
</tbody>
</table>

**Example POST**

``` pre
{"custom-model-logit": {
  "member_id": 1,
  "beta0": 1.2,
  "max": 5,
  "min": 0,  //optional, will be set to 0 if not passed
  "name": "Sample LRE model",
  "offset": 0.3, //optional, will be set to 0 if not passed
  "scale": 1.5, //optional, will be set to 1 if not passed
  "predictors": [
    {
      "coefficient": 0.2,
      "feature_descriptor": {
        "bucket_count_log_per_range": 31,
        "default_value": 0,
        "feature_keyword": "size",
        "initial_range_log": 31,
        "type": "scalar_descriptor"
      },
      "type": "scalar"
    },
    {
      "coefficient": 0.3,
      "feature_descriptor": {
        "bucket_count_log_per_range": 31,
        "custom_model_id": 2,
        "default_value": 0,
        "feature_keyword": "custom_model",
        "initial_range_log": 31,
        "type": "custom_model_descriptor"
      },
      "type": "scalar"
    },
    {
      "coefficient": 0.4,
      "feature_descriptor": {
        "bucket_count_log_per_range": 31,
        "default_value": 0,
        "feature_keyword": "frequency_life",
        "initial_range_log": 31,
        "object_id": 1,
        "object_type": "advertiser",
        "type": "frequency_recency_descriptor"
      },
      "type": "scalar"
    },
    {
      "coefficient": 0.5,
      "feature_descriptor": {
        "bucket_count_log_per_range": 31,
        "default_value": 0,
        "feature_keyword": "segment_age",
        "initial_range_log": 31,
        "segment_id": 2,
        "type": "segment_descriptor"
      },
      "type": "scalar"
    },
    {
        "type": "hashed",
        "keys": [
            {
                "type": "categorical_descriptor",
                "feature_keyword": "advertiser_id"
            },
            {
                "type": "scalar_descriptor",
                "feature_keyword": "user_age",
                "default_value": 0
            }
        ],
        "hash_seeds": [42, 42, 42, 42, 42, 42],
        "default_value": 0,
        "hash_table_size_log": 20,
        "coefficients": [
            {"bucket_index0": 0, "bucket_index1": 0, "weight": 1.3},
            {"bucket_index0": 1, "bucket_index1": 0, "weight": 0.7},
            {"bucket_index0": 2, "bucket_index1": 0, "weight": 1.5},
            {"bucket_index0": 3, "bucket_index1": 0, "weight": 0.9}
        ]
    },
    {
        "type": "lookup",
        "default_value": 0.1,
        "features": [
            {
                "type": "categorical_descriptor",
                "feature_keyword": "advertiser_id"
            },
            {
                "type": "scalar_descriptor",
                "feature_keyword": "user_age",
                "default_value": 0
            }
        ],
        "coefficients": [
            {'weight': 1.1, 'key': [1, 1]},
            {'weight': 1.3, 'key': [2, 2]},
            {'weight': 1.2, 'key': [3, 3]},
        ]
    }
  ]
}}
 
```





<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="logistic-regression-custom-model-service.html"
class="link">Logistic Regression Custom Model Service</a>






