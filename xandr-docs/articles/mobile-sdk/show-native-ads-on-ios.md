---
Title : Show Native Ads on iOS
Description : Native ads give you the ability to create ads that are customized to
match the look and feel of the rest of your application. This page
---


# Show Native Ads on iOS



Native ads give you the ability to create ads that are customized to
match the look and feel of the rest of your application. This page
describes our Native Ads API at a high level, and includes a usage
example. For a complete reference, see the inline documentation in the
code.

Native networks supported through **mediation**:

- Facebook
- Google AdMob and Google DoubleClick for Publishers (Google DFP)



Note: Maintain references to request
and response objects!

Maintain references to request and response objects!

You must maintain a reference to the `ANNativeAdRequest` and
`ANNativeAdResponse` objects you create. Otherwise they will go out of
scope and cause unexpected behavior.



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





## List of Fields Supported in Native

As if version 5.0 of the Mobile SDK, support for native assets is
aligned with how native creatives are set up on Console.

If you are still using Legacy Native in Console, you will need to move
to "New" Native for your creatives.

The following is a comprehensive list of native assets supported in the
SDKs.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000235c__entry__1"
class="entry colsep-1 rowsep-1">Asset</th>
<th id="ID-0000235c__entry__2" class="entry colsep-1 rowsep-1">Supported
Pre 5.0?</th>
<th id="ID-0000235c__entry__3" class="entry colsep-1 rowsep-1">Supported
Post 5.0?</th>
<th id="ID-0000235c__entry__4" class="entry colsep-1 rowsep-1">v5.0+
API-Usage Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Image, Width, Height</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__2">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.mainImage;
response.mainImageSize;
response.mainImageURL;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Icon+Width+Height</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__2">Yes,
No, No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.iconImage;
response.iconImageURL;
response.iconImageSize;</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Title</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.title;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Sponsored by</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.sponsoredBy;</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__1">Body
text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.body;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Desc2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.additionalDescription;</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Call-to-action</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.callToAction;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Rating, Scale</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__2">Yes,
Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes,
No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.rating;</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Likes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
<td rowspan="9" class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__4"><pre class="pre codeblock"><code>NSDictionary *customElements = response.customElements[@&quot;ELEMENT&quot;];
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
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Downloads</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__1">Sale
Price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Phone</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Display URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Click URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Click Fallback URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Privacy URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.privacyLink;</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__4"><pre
class="pre codeblock"><code>response.vastXML;</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Custom</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__1">Context</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000235c__entry__1">Full
text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000235c__entry__4"></td>
</tr>
</tbody>
</table>





## Related Topics

- <a href="ios-sdk-integration.html" class="xref">Integrate with iOS</a>
- <a href="mediate-with-ios.html" class="xref">Mediate with iOS</a>






