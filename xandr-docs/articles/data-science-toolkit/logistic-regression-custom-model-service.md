---
Title : Logistic Regression Custom Model Service
Description : The Logistic Regression Custom Model Service allows you to create logistic regression models (sometimes called "logit models") to predict
the likelihood of clicks or conversions based on a combination of
multiple signals. The logistic regression models can then be associated
ms.custom : data-science
---


# Logistic Regression Custom Model Service



The Logistic Regression Custom Model Service allows you to create
logistic regression models (sometimes called "logit models") to predict
the likelihood of clicks or conversions based on a combination of
multiple signals. The logistic regression models can then be associated
with a line item using the Line Item Service - ALI (Archived).



<b>Note:</b> This offering is currently in
Closed Beta and available to a limited set of clients. For more
information about the Advanced Ads Toolset and potential use cases that
may apply to your business, reach out to your account representative.



The formula for logistic regression is:
![logistic regression](media/datascience-i.png)

For online advertising, the event is a click, a pixel fire, or another
online action. The probability is conditional on both the predictors x 1
through xn and on an implicit set of variables that represent the
features in a bid request. The beta coefficients are the weights that
the model assigns to different predictors.

We convert this probability of an event happening to an expected value
by multiplying the probability by the event's value (the eCPC goal for a
click prediction), adding an additive offset to the estimate, and then
applying min/max expected value limits to reduce the impact of
mispredictions. 

The formula for deriving an expected value for an impression from the
probability of an event happening is:

![formula for deriving an expected value for an impression ](media/datascience-j.png)


The offset will usually be 0. However, a negative value may be useful as
a security factor to ensure performance at the expense of delivery on
low-performing inventory. That will ensure that the advertiser does not
bid, instead of bidding very little and potentially incurring fixed
fees.

For more information about how logistic regression custom models work,
see <a href="logistic-regression-models.md" class="xref">Logistic
Regression Models</a>.



## REST API

**Add a new  logistic regression model:**

``` pre
POST https://api.appnexus.com/custom-model-logit
(template JSON)
```

**Modify a  logistic regression model:**

``` pre
PUT https://api.appnexus.com/custom-model-logit?id=CUSTOM_MODEL_LOGIT_ID
(template JSON)
```

**Delete a logistic regression model: **

``` pre
DELETE https://api.appnexus.com/custom-model-logit?id=CUSTOM_MODEL_LOGIT_ID
```

**View all logistic regression models: **

``` pre
GET https://api.appnexus.com/custom-model-logit 
```

  
**View a specific logistic regression model: **

``` pre
GET https://api.appnexus.com/custom-model-logit?id=CUSTOM_MODEL_LOGIT_ID
```





## JSON Fields

**General**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__1"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__2" class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__3"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code class="ph codeph">id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">int</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__3">The
ID of the logistic regression custom model.
<p><strong>Default:</strong> Auto-generated number</p>
<p><strong>Required on:</strong> <code
class="ph codeph">PUT/ DELETE</code> in query string</p></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code class="ph codeph">name</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">string </td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__3">The
name of the model.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code
class="ph codeph">beta0</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__3">β 0
coefficient in the logistic regression equation.<br />
</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code class="ph codeph">max</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__3">Max
in the expected value equation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code class="ph codeph">min</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">float</td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__3">Min
in the expected value equation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code
class="ph codeph">offset</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__3">Offset in the expected value
equation.</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code
class="ph codeph">scale</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">float</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__3">Scale in the expected value
equation.</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__1"><code
class="ph codeph">predictors</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__2">array</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__3">Array of predictors. See <a
href="logistic-regression-custom-model-service.html#ID-00000e83__predictors"
class="xref">Predictors</a> for more details.</td>
</tr>
</tbody>
</table>

**Predictors**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__28"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__29"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__30"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">predictor_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30">scalar_descriptor,
custom_model_descriptor, freq_rec_descriptor, segment_descriptor,
categorical_descriptor<br />
<br />
Link to table specifying features for each predictor_type?</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">keys</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">hash_seed</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">hash_table_size_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__28"><code
class="ph codeph">coefficients</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__29"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__30"></td>
</tr>
</tbody>
</table>

**Hashed Descriptor**

This endpoint is to submit a pre-hashed
table. `bucket_index0` and `bucket_index1`, each 64 bits long, are there
to support hashing algorithms that produce long values as keys.
Currently, we only support one hashing algorithm: `MurmurHash3_x64_128`,
which will create two 64 bit integers but we only use the lower 64 bits
of the hash.

Values in `bucket_index0` must always be smaller
than `(2 ^ hash_table_size_log)` or they will get rejected

Currently, the values in `bucket_index1` are ignored as this is to be
used for future expansion. If a value is sent for `bucket_index1`, it
must be `0`. The parameter is optional.

**Hash Table Keys**

For each of your Hash Table keys, you will need a uint32 value. These
values should be the ID of respective object that you are referencing
from our system - `domain_id`, for instance, rather than the domain
string value. These uint32 keys are then transformed into a byte array
(little-endian), and hashed. 

**Examples**

**Python Example**

`hash_bucket  = (mmh3.hash64(bytes, seed)[ 0 ])  % table_size`

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__49"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__50"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__51"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__51"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">keys</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__51">Array of one to 5 descriptors in this
list:</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">hashed_seeds</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__51">Seeds used when passed to <code
class="ph codeph">Murmurhash3_x64_128</code> function, only first one is
used for now, array is for planned future hash functions that need more
than one seed</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">hash_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__51">Existing hash table ID</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__51">Value returned by the descriptor if no
match is found in your hash table</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__49"><code
class="ph codeph">hash_table_size_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__50"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__51">Log
of maximum value for a key of your table. Values larger than <code
class="ph codeph">2^hash_table_size_log</code> will be rejected. Max for
<code class="ph codeph">hash_table_size_log</code> is 64 (no
bucketing)</td>
</tr>
</tbody>
</table>

**Hashed Descriptor Example**

``` pre
{
    "type": "hashed",
    "keys": [ 
    ],
    "hash_seeds": [42, 42, 42, 42, 42, 42], 
    "hash_id": ,
    "default_value": 0,                     
    "hash_table_size_log": 20                
}
```

**Lookup Table (LUT) Descriptor**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__70"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__71"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__72"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__70"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__72"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__70"><code
class="ph codeph">feature_keyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__72"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__70"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__72"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__70"><code
class="ph codeph">initial_range_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__72"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__70"><code
class="ph codeph">bucket_count_log_per_range</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__71"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__72"></td>
</tr>
</tbody>
</table>

**LUT Descriptor Example**

``` pre
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
```

**Categorical Descriptor**

Since this is finding an exact match,
the `default_value`, `initial_range_log` and `bucket_count_log_per_range` params
are not needed.

**Missing Values**

The key value of \``-1`\` can be used as a placeholder for a missing
feature; For instance, when a domain is not reported by the seller.
Otherwise, the default value of the LUT or Hash Model will be used,
since no match will be found for that feature value.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__88"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__89"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__90"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__88"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__89"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__90"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__88"><code
class="ph codeph">feature_keyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__89"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__90"><ul>
<li>country</li>
<li>region</li>
<li>city</li>
<li>dma</li>
<li>postal_code</li>
<li>user_day</li>
<li>user_hour</li>
<li>os_family</li>
<li>os_extended</li>
<li>browser</li>
<li>language</li>
<li>user_gender</li>
<li>domain</li>
<li>ip_address</li>
<li>position</li>
<li>placement</li>
<li>placement_group</li>
<li>publisher</li>
<li>seller_member_id</li>
<li>supply_type</li>
<li>device_type</li>
<li>device_model</li>
<li>carrier</li>
<li>mobile_app</li>
<li>mobile_app_instance</li>
<li>mobile_app_bundle</li>
<li>appnexus_intended_audience</li>
<li>seller_intended_audience</li>
<li>spend_protection</li>
<li>user_group_id</li>
<li>advertiser_id</li>
<li>brand_category</li>
<li>creative</li>
<li>inventory_url_id</li>
<li>media_type</li>
</ul></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__88"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__89"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__90"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__88"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__89"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__90">Advertiser, line_item, campaign (not
split?)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__88"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__89"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__90">ID
of the referenced advertiser, </td>
</tr>
</tbody>
</table>

**Categorical Descriptor Example**

``` pre
{
    "type": "categorical_descriptor",
    "feature_keyword": "city"
}
```

**Frequency and Recency Descriptor**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__106"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__107"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__108"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">feature_keyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108">frequency_life
<p>frequency_daily</p>
<p>recency </p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">object_type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108">Advertiser, line_item, campaign (not
split?)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">object_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__108">ID
of the referenced advertiser, </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108">Value returned by the descriptor if no
match is found</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">initial_range_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108">Used for log bucketing, initial
range</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__106"><code
class="ph codeph">bucket_count_log_per_range</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__107"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__108">used for log bucketing, # of buckets
per range</td>
</tr>
</tbody>
</table>

**Frequency and Recency Descriptor Example**

``` pre
{
    "type": "frequency_recency_descriptor",
    "feature_keyword": 'frequency_life',
    "object_type": 'advertiser',
    "object_id": 1,                   
    "default_value": 0,              
    "initial_range_log": 4,           
    "bucket_count_log_per_range": 2   
}
```

**Scalar Descriptor**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__133"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__134"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__135"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__133"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__134"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__135"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__133"><code
class="ph codeph">feature_keyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__134"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__135"><ul>
<li>appnexus_audited</li>
<li>cookie_age</li>
<li>estimated_average_price</li>
<li>estimated_clearing_price</li>
<li>predicted_iab_view_rate</li>
<li>predicted_video_completion_rate</li>
<li>self_audited</li>
<li>size</li>
<li>creative_size</li>
<li>spend_protection</li>
<li>uniform</li>
<li>user_age</li>
</ul>

<b>Note:</b> The size descriptor is
represented as a string in your models ("300x250", for instance), though
converted to a scalar in our bidder. Any size is technically valid in
our system, hence this feature being treated as a scalar rather than a
categorical feature.
</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__133"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__134"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__135">Value returned by the descriptor if no
match is found</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__133"><code
class="ph codeph">initial_range_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__134"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__135">Used for log bucketing, initial
range</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__133"><code
class="ph codeph">bucket_count_log_per_range</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__134"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__135">Used for log bucketing, # of buckets
per range</td>
</tr>
</tbody>
</table>

**Scalar Descriptor Example**

``` pre
{
    "type": "scalar_descriptor",
    "feature_keyword": "cookie_age",
    "default_value": 0,              
    "initial_range_log": 4,           
    "bucket_count_log_per_range": 2   
} 
```

**Segment Descriptor**

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-00000e83__entry__151"
class="entry colsep-1 rowsep-1">Field</th>
<th id="ID-00000e83__entry__152"
class="entry colsep-1 rowsep-1">Type</th>
<th id="ID-00000e83__entry__153"
class="entry colsep-1 rowsep-1">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">type</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__153"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">feature_keyword</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__153">segment_value
<p>segment_age</p>
<p>segment_presence</p></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">segment_id</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1" headers="ID-00000e83__entry__153">ID
of referenced segment</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">default_value</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__153">Value returned by the descriptor if no
match is found</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">initial_range_log</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__153">Used for log bucketing, initial
range </td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__151"><code
class="ph codeph">bucket_count_log_per_range</code></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__152"></td>
<td class="entry colsep-1 rowsep-1"
headers="ID-00000e83__entry__153">Used for log bucketing, # of buckets
per range</td>
</tr>
</tbody>
</table>

**Segment Descriptor Example**

``` pre
{
    "type": "segment_descriptor",
    "feature_keyword": "segment_age",
    "segment_id": 2,                  
    "default_value": 0,              
    "initial_range_log": 4,           
    "bucket_count_log_per_range": 2   
}
```





- **[Logistic Regression Model API
  Resources](logistic-regression-model-api-resources.html)**  


<a href="custom-models.md" class="link">Custom Models</a>






