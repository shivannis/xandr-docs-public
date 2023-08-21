# Show Native Ads on iOS

<div class="body">

Native ads give you the ability to create ads that are customized to
match the look and feel of the rest of your application. This page
describes our Native Ads API at a high level, and includes a usage
example. For a complete reference, see the inline documentation in the
code.

Native networks supported through **mediation**:

- inMobi
- Facebook
- Yahoo Flurry
- AdMob and DFP

<div class="note">

<span class="notetitle">Note:</span> Maintain references to request and
response objects!

Maintain references to request and response objects!

You must maintain a reference to the `ANNativeAdRequest` and
`ANNativeAdResponse` objects you create. Otherwise they will go out of
scope and cause unexpected behavior.

</div>

In order to serve native ads, you will send a "native ad request" and
receive a "native ad response". In the example request and response
below, we:

- Set up a request object, and set some of its properties such as the
  placement ID and whether to pre-load the ad's icon image.
- Optionally, set the renderer_id for this NativeAdRequest. (For more on
  renderer_id see <a
  href="https://docs.xandr.com/bundle/xandr-api/page/native-layout-service.html"
  class="xref" target="_blank">Native Layout Service</a>.) The
  renderer_id needs to be specified for vastxml, likes, downloads,
  saleprice, phone, address, display URL to be returned in the
  NativeAdResponse.
- Assuming the request is successful, we load the native ad assets from
  the response into the view and register it so that we can track user
  interactions such as clicks.

<div class="section">

## Request

First, we set up the request object and set some of its properties such
as the placement ID and whether to pre-load the ad's icon image:

``` pre
ANNativeAdRequest *request = [[ANNativeAdRequest alloc] init];
request.placementId = @"123456";
request.rendererId = 123;
request.gender = ANGenderMale;
request.shouldLoadIconImage = YES;
request.shouldLoadMainImage = YES;
request.delegate = self;
[request loadAd];
```

</div>

<div class="section">

## Response

Assuming the request is successful, we load the native ad assets from
the response into the view and register it so that we can track user
interactions such as clicks:

``` pre
- (void)adRequest:(ANNativeAdRequest *)request didReceiveResponse:(ANNativeAdResponse *)response {
      // (code which loads the view)
      MyDummyView *view;
      view.title.text = response.title;
      view.text.text = response.body;
      view.iconImageView.image = response.iconImage;
      view.mainImageView.image = response.mainImage;
      [view.callToActionButton setTitle:response.callToAction forState:UIControlStateNormal];
 
      response.delegate = self;
 
      [response registerViewForTracking:view
                 withRootViewController:self
                         clickableViews:@[view.callToActionButton, view.mainImageView]
                                  error:nil];
 }
```

In this example response, we use several elements of a native ad:

- A title
- An icon image
- The main ad image
- Bodytext
- A "call to action" button that the user can click to convert

</div>

<div class="section">

## List of Fields Supported in Native

As if version 5.0 of the Mobile SDK, support for native assets is
aligned with how native creatives are set up on Console.

If you are still using Legacy Native in Console, you will need to move
to "New" Native for your creatives.

The following is a comprehensive list of native assets supported in the
SDKs.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d26416e167" class="entry cellborder"
style="vertical-align: top">Asset</th>
<th id="d26416e170" class="entry cellborder"
style="vertical-align: top">Supported Pre 5.0?</th>
<th id="d26416e173" class="entry cellborder"
style="vertical-align: top">Supported Post 5.0?</th>
<th id="d26416e176" class="entry cellborder"
style="vertical-align: top">v5.0+ API-Usage Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Image, Width, Height</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes, Yes, Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes, Yes, Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.mainImage;
response.mainImageSize;
response.mainImageURL;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Icon+Width+Height</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes, No, No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes, Yes, Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.iconImage;
response.iconImageURL;
response.iconImageSize;</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Title</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.title;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Sponsored by</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.sponsoredBy;</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Body text</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.body;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Desc2</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.additionalDescription;</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Call-to-action</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.callToAction;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Rating, Scale</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes, Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes, No</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.rating;</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Likes</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
<td rowspan="9" class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>NSDictionary *customElements = response.customElements[@&quot;ELEMENT&quot;];
if(customElements){
  NSString *likes =  customElements[@&quot;likes&quot;]
NSString *downloads = customElements[@&quot;downloads&quot;]
NSString *price = customElements[@&quot;price&quot;]
NSString *saleprice = customElements[@&quot;saleprice&quot;]
NSString *phone = customElements[@&quot;phone&quot;]
NSString *address = customElements[@&quot;address&quot;];
NSString *displayurl =  customElements[@&quot;displayurl&quot;];
// To Get clickUrl
NSString *clickUrl = customElements[@&quot;link&quot;][@&quot;url&quot;];
//To Get clickFallbackUrl
NSString *clickFallbackUrl = customElements[@&quot;link&quot;][@&quot;fallback_url&quot;]
}</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Downloads</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Price</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Sale Price</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Phone</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Address</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Display URL</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Click URL</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Click Fallback URL</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes (json only)</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Privacy URL</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.privacyLink;</code></pre></td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Video</td>
<td class="entry cellborder"
headers="d26416e170 ">No</td>
<td class="entry cellborder"
headers="d26416e173 ">Yes</td>
<td class="entry cellborder"
headers="d26416e176 "><pre class="pre codeblock"><code>response.vastXML;</code></pre></td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Custom</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">No</td>
<td class="entry cellborder"
headers="d26416e176 "> </td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d26416e167 ">Context</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">No</td>
<td class="entry cellborder"
headers="d26416e176 "> </td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d26416e167 ">Full text</td>
<td class="entry cellborder"
headers="d26416e170 ">Yes</td>
<td class="entry cellborder"
headers="d26416e173 ">No</td>
<td class="entry cellborder"
headers="d26416e176 "> </td>
</tr>
</tbody>
</table>

</div>

</div>

<div class="section">

## Related Topics

- <a href="ios-sdk-integration.html" class="xref">Integrate with iOS</a>
- <a href="mediate-with-ios.html" class="xref">Mediate with iOS</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-ad-units.html" class="link">iOS SDK Ad Units</a>

</div>

</div>

</div>
