---
Title : Show Native Ads on Android
Description : <b>Note:</b> Native impression counting
methodology follows the count-on-render methodology that is used for
banner creatives - an impression will fire as soon as the native
advertisement renders, regardless of its length of time on the
screen. This will ensure greater accuracy and better deliverability,
ms.custom : android-sdk
---


# Show Native Ads on Android





<b>Note:</b> Native impression counting
methodology follows the count-on-render methodology that is used for
banner creatives - an impression will fire as soon as the native
advertisement renders, regardless of its length of time on the
screen. This will ensure greater accuracy and better deliverability,
thus improving overall yield.



Native ads give you the ability to create ads that are customized to
match the look and feel of the rest of your application. This page
describes our Native Ads API at a high level, and includes a usage
example.

Native networks supported through **mediation**:

- Facebook
- AdMob and DFP

In order to serve native ads, you will send a native ad request, and
receive a native ad response. For Android 9 and above and API v. 28 and
above, the request must be HTTPS by default in order to accurately track
viewability. You can enable HTTPS with `useHttps(true)`.

In the example code below, we:

- Set up a request object and supply it with either:
  - The placement ID (as shown in the example code below), OR

  - A combination of inventory code and member ID:

    ``` pre
    public NativeAdRequest nativeAdRequest= new NativeAdRequest(context, "PLACEMENT_ID");
    //public NativeAdRequest nativeAdRequest= new NativeAdRequest(context, "INVENTORY_CODE", MEMBER_ID);
    ```

- Optionally, you can set the `renderer_id`  for this
  `NativeAdRequest`. (For more on `renderer_id` see <a
  href="xandr-api/native-layout-service.md"
  class="xref" target="_blank">Native Layout Service</a>.) The
  `renderer_id` needs to be specified in order for vastxml, likes,
  downloads, saleprice, phone, address, and display URL to be returned
  in the `NativeAdResponse`.  

  ``` pre
  nativeAdRequest.setRendererId(RENDERER_ID);
  ```

- Register a listener that will signal native ad events such as
  clicks (NativeAdEventListener).

- Register a listener to signal the state of the native request: success
  or failure. The listener must implement the `NativeAdRequestListener`
  interface.

- If the request is successful (i.e., `NativeAdListener.onAdLoaded()`
  fires), native ad assets are loaded in the `NativeAdResponse` object
  which can be used in views that match the native look of the app. Then
  register the parent or container view of these views to enable
  impression and click tracking.

- Unregister the native ad view after you have completed the workflow.
  When the unregister method is called, OMID viewability script of Xandr
  Mobile SDK generates a bulk report of the OMID session during the
  worflow. Therefore, it is important for the publishers to implement
  this API which facilitates an accurate measure on the viewability



<b>Note:</b> Maintain references to native
views and native response objects.

Maintain references to native views and native response objects.

It is your responsibility to keep a reference to the native ad view and
`NativeAdResponse` object if necessary.



``` pre
public class MyActivity extends Activity {
 
    Context activityContext;
    NativeAdResponse nativeAdResponse;
    LinearLayout container;
 
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
 
        activityContext = this;
 
        // Create a NativeAdRequest object
        NativeAdRequest adRequest = new NativeAdRequest(activityContext, "123456"); // Placement ID
         
        // Optionally set the renderer_id
        //adRequest.setRendererId(123);
 
        // Create a listener for ad events
        NativeAdEventListener adEventListener = new
                NativeAdEventListener() {
                    @Override
                    public void onAdWasClicked() {
                        // Do something when the view is clicked
                    }
 
                    @Override
                    public void onAdWillLeaveApplication() {
                        // Do something when the ad is taking user away from current app
                    }
 
                    @Override
                    public void onAdWasClicked(String clickUrl, String fallbackURL) {
                        // Handle Click URL
                    }
                };
 
        // Whether to pre-load the native ad's icon and main image
        adRequest.shouldLoadIcon(true);
        adRequest.shouldLoadImage(true);
 
        adRequest.setListener(new NativeAdRequestListener() {
            @Override
            public void onAdLoaded(NativeAdResponse response) {
                nativeAdResponse = response;
                // Cover image
                ImageView imageView = new ImageView(activityContext);
                imageView.setImageBitmap(response.getImage());
 
                // Icon image
                ImageView iconView = new ImageView(activityContext);
                iconView.setImageBitmap(response.getIcon());
 
                // Title
                TextView title = new TextView(activityContext);
                title.setText(response.getTitle());
 
                // Main text
                TextView description = new TextView(activityContext);
                description.setText(response.getDescription());
 
                // Text that indicates a call to action -- for example, to install an app
                TextView callToAction = new TextView(activityContext);
                callToAction.setText(response.getCallToAction());
 
                // Create a container (a parent view that holds all the
                // views for native ads)
                LinearLayout container = new LinearLayout(activityContext);
                container.addView(iconView);
                container.addView(title);
 
                // Add the native ad container to the view hierarchy
                LinearLayout ad_frame = findViewById(R.id.native_ad_frame);
                ad_frame.addView(container);
            }
 
            @Override
            public void onAdFailed(ResultCode errorcode) {
 
            }
        });
 
        // Call loadAd() to request a response once
        adRequest.loadAd();
 
        // Register native views for click and impression tracking.  The
        // adEventListener is the listener created above; it can be null if
        // you don't want to receive notifications about click events.
        // Impressions and clicks won't be counted if the view is not registered.
        NativeAdSDK.registerTracking(nativeAdResponse, container, adEventListener);
 
        // It's your responsibility to keep a reference to the view
        // and NativeAdResponse object if necessary.
        // Once done with the native ad view, call the following method to
        // unregister that view.
        NativeAdSDK.unRegisterTracking(container);
    }
}
    
```



## Fields Supported in Native

As of version 5.0 of the Mobile SDK, support for native assets is
aligned with how native creatives are set up in
Xandr's UI.

If you are still using Legacy Native in , you
will need to move to "New" Native for your creatives.

The following is a comprehensive list of native assets supported in the
SDKs.

<table class="table">
<thead class="thead">
<tr class="header row">
<th id="ID-0000094b__entry__1"
class="entry colsep-1 rowsep-1">Asset</th>
<th id="ID-0000094b__entry__2" class="entry colsep-1 rowsep-1">Supported
Pre 5.0?</th>
<th id="ID-0000094b__entry__3" class="entry colsep-1 rowsep-1">Supported
Post 5.0?</th>
<th id="ID-0000094b__entry__4" class="entry colsep-1 rowsep-1">v5.0+
API-Usage Example</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Image, Width, Height</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__2">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>nativeAdResponse.getImage();
nativeAdResponse.getImageSize();</code></pre>
<pre id="ID-0000094b__codeblock_htm_rxn_mwb"
class="pre codeblock"><code>nativeAdResponse.getImageUrl();</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Icon+Width+Height</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__2">Yes,
No, No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes,
Yes, Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getIcon();
          nativeAdResponse.getIconSize();</code></pre>
<pre id="ID-0000094b__codeblock_aqk_5xn_mwb"
class="pre codeblock"><code>nativeAdResponse.getIconUrl();</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Title</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getTitle();</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Sponsored by</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getSponsoredBy();</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__1">Body
text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getDescription();</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Desc2</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getAdditionalDescription();</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Call-to-action</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getCallToAction();</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Rating, Scale</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__2">Yes,
Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes,
No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getAdStarRating();</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Likes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
<td rowspan="9" class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__4"><pre class="pre codeblock"><code>if((nativeAdResponse.getNetworkIdentifier() == NativeAdResponse.Network.APPNEXUS) &amp;&amp;. (nativeAdResponse.getNativeElements().get(NativeAdResponse.NATIVE_ELEMENT_OBJECT)) instanceof JSONObject){
JSONObject nativeResponseJSON = (JSONObject) (nativeAdResponse.getNativeElements().get(NativeAdResponse.NATIVE_ELEMENT_OBJECT));</code></pre>
<pre id="ID-0000094b__codeblock_vzy_wxn_mwb"
class="pre codeblock"><code>String likes = JsonUtil.getJSONString(nativeResponseJSON,&quot;likes&quot;);
    String downloads = JsonUtil.getJSONString(nativeResponseJSON,&quot;downloads&quot;);
    String price = JsonUtil.getJSONString(nativeResponseJSON,&quot;price&quot;);
    String saleprice = JsonUtil.getJSONString(nativeResponseJSON,&quot;saleprice&quot;);
    String phone = JsonUtil.getJSONString(nativeResponseJSON,&quot;phone&quot;);
    String address = JsonUtil.getJSONString(nativeResponseJSON,&quot;address&quot;);
    String displayurl = JsonUtil.getJSONString(nativeResponseJSON,&quot;displayurl&quot;);
   // To Get clickUrl
    String clickUrl = JsonUtil.getJSONObject(nativeResponseJSON,&quot;link&quot;).getString(&quot;url&quot;);
  //To Get clickFallbackUrl
    String clickFallbackUrl = JsonUtil.getJSONObject(nativeResponseJSON,&quot;link&quot;).getString(&quot;fallback_url&quot;);
}</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Downloads</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__1">Sale
Price</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Phone</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Address</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Display URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Click URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Click Fallback URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__3">Yes
(json only)</td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Privacy URL</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getPrivacyLink();</code></pre></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Video</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">Yes</td>
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__4"><pre
class="pre codeblock"><code>          nativeAdResponse.getVastXml();</code></pre></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Custom</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__4"></td>
</tr>
<tr class="odd row">
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__1">Context</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__4"></td>
</tr>
<tr class="even row">
<td class="entry colsep-1 rowsep-1" headers="ID-0000094b__entry__1">Full
text</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__2">Yes</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__3">No</td>
<td class="entry colsep-1 rowsep-1"
headers="ID-0000094b__entry__4"></td>
</tr>
</tbody>
</table>





##  Related Topics

- <a
  href="android-sdk-integration-instructions.md"
  class="xref" target="_blank">Android SDK Integration Instructions</a>
- <a
  href="get-facebook-demand-for-native-on-android.md"
  class="xref" target="_blank">Get Facebook Demand for Native on
  Android</a>
- <a
  href="mediate-with-android-sdk-instructions.md"
  class="xref" target="_blank">Mediate with Android SDK Instructions</a>






