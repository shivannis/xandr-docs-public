# Real Time Integrations (Contextual Data Providers)

<div class="body">

For contextual data providers, the data is directly related to the
inventory. This requires that we make a real time request to the data
provider for each impression in order to gain information about brand
safety and categorization data based on the referrer URL. When the
referrer URL is passed to us for the auction (either server-side by an
inventory partner or in the HTTP header), we pass that along to the
contextual data providers, who respond with categories (which we call
"segments") corresponding to the page's categorization, e.g., "News".

Also see <a
href="https://docs.xandr.com/bundle/data-providers/page/real-time-data-integration-instructions.html"
class="xref" target="_blank">Real Time Data Integration
Instructions.</a>

<div class="section">

## The Process

<div class="fig fignone">

<div class="p">

  

<div class="imagecenter">

<img src="images/data-providers/1.jpeg"
id="ID-00000098__image-ec4b6e1e-c96d-4a0e-9aca-3fa1592a936a"
class="image imagecenter" width="700" height="500" />

</div>

  

</div>

</div>

<div class="p">

1.  An impression comes into the impression bus either via a placement
    tag on the page or a server-side call from a supply partner. The
    impression must have a referrer URL either in the HTTP header, as a
    querystring parameter or from the default_referrer_url of the
    placement if the domain/url visibility in set to "hidden".
2.  User data is looked up in the server-side cookie store using the UID
    in the user's browser cookie as the key for the look up.
3.  User data is returned by the server-side cookie store. This data is
    attached to the auction as segment data and free-form user data
    JSON.
4.  If there is a referrer URL, a request is sent to the contextual data
    provider containing the referrer URL as a querystring parameter
5.  The data provider returns a line-return separated list of segment
    codes (see the code field on the Segment service) corresponding to
    the categorization(s) for the page. These categorizations are
    attached to the auction as segment data.
    1.  If no categorizations can be mapped to the referrer URL, a blank
        response with a new line character should be returned.
6.  Bid requests are sent to our UI as well as other DSPs and Bidders.
    The auction data contains the segments associated with a given data
    provider only if the bidder or a member associated with that bidder
    has access to those segments.
    <div id="ID-00000098__note-5bf2fb37-021f-4a33-bc2b-d0af9fd4d182"
    class="note tip">

    <span class="tiptitle">Tip:</span> Real Time vs Behavioral Segments
    An important distinction between real time (contextual) and
    behavioral segments is that real time segments returned by a Real
    Time Data Provider only exist for the life of the impression and do
    not affect user segment membership. Behavioral segments are
    associated with the user, and exist as long as the user is
    associated with that segment.

    </div>
7.  <span class="ph"></span>, DSPs, and Bidders return a response for
    each auction (either a bid or an indication that they do not wish to
    participate).
8.  Lastly, for auctions where <span class="ph">Xandr</span> is the
    final decision maker, the winning creative is returned to the user's
    browser. If the impression was received via a server-side call from
    a supply partner, the winning creative and bid is returned to that
    supply partner for participation in another auction.

</div>

</div>

<div class="section">

## Technical Details

When an impression comes into the impression bus, an HTTP GET request is
sent to an available data provider instance with the macros appended to
the `bid_uri` parameter configured on the <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-service.html"
class="xref" target="_blank">Bidder Service</a>. The data provider
instance should respond with a list of segment codes (not segment IDs -
only segment codes will be accepted), separated by a new line (\n). The
current timeout interval for data provider requests is 10 milliseconds.

<div class="note tip">

<span class="tiptitle">Tip:</span> For a complete list of
<span class="ph">Xandr</span> macros that can be appended to your
`bid_uri`, see <span class="ph">Xandr</span> <a
href="https://docs.xandr.com/bundle/data-providers/page/xandr-macros-for-data-providers.html"
class="xref" target="_blank">Macros for Data Providers.</a>

</div>

**Example Request and Response**

**Request**

``` pre
GET /data_provider/get_categories?url=http://www.mikeonads.com/2009/10/18/rtb-serving-speed/
```

**Response**

``` pre
brand_safety_safe
brand_safety_not_adserver
brand_safety_general_audience
cat_computers
cat_real_time_bidding
cat_technology
```

</div>

<div class="section">

## Setup

Data providers with real-time integrations are implemented as
'bidders' even though they are not actually placing bids. They set up <a
href="https://docs.xandr.com/bundle/xandr-bidders/page/bidder-instance-service.html"
class="xref" target="_blank">bidder instances</a> in each data center
and interact directly with the impression bus. Each data provider using
this integration method must have a single member associated with their
bidder, and the segments will be housed within the member. We will
configure the member for you and suggest that you do not modify this
without first consulting with your technical contact at
<span class="ph">Xandr</span>.

Since the timeout period of 10 milliseconds is so short and because
requests are received directly from the impression bus, it is necessary
to register a bidder instance in each data center that you wish to see
requests in.

</div>

<div class="section">

## Other Considerations

<div class="p">

- The data provider phase lasts 10 milliseconds, meaning that all data
  providers must respond with some kind of categorization within 10
  milliseconds or less.
- A data provider will only be called if it has an instance in operation
  in the same data center that processes the impression. For example, if
  an impression comes into the Amsterdam data center, and the data
  provider has instances in the New York and LA data centers, they will
  not receive a request for categorization.
- Given the required response time of 10ms or less, real time data
  providers should consider co-locating within data centers used by
  <span class="ph">Xandr</span> to reduce latency and ensure the
  response times are 10ms or less.
- Real Time Data Provider integration usually takes multiple months to
  complete. We encourage prospective data providers to take that into
  account before starting integration with
  <span class="ph">Xandr</span>.
- In order to manage instances and the requests received, the data
  provider may use the bidder, bidder instance, and profile services in
  the impressions bus API.

</div>

</div>

</div>

<div class="related-links">

- **[Introduction to Integrating with the Xandr Impression
  Bus](introduction-to-integrating-with-the-xandr-impression-bus.html)**  
- **[Best Practices for Real Time Data Provider
  Integrations](best-practices-for-real-time-data-provider-integrations.html)**  
- **[Xandr Macros for Data
  Providers](xandr-macros-for-data-providers.html)**  
- **[Real Time Data Integration
  Instructions](real-time-data-integration-instructions.html)**  
- **[Real Time Data Provider Throttling Traffic
  FAQ](real-time-data-provider-throttling-traffic-faq.html)**  

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="integrating-your-data.html" class="link">Integrating Your
Data</a>

</div>

</div>

</div>
