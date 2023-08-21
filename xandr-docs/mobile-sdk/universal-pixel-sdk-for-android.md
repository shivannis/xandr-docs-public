# Universal Pixel SDK for Android

<div class="body">

This document provides instructions on how publishers can integrate and
install the Universal Pixel SDK (Pixie SDK) for Android.

<div class="section">

## Integration

**Requirements**

This SDK requires 

- Android 4.0 or later
- Android SDK version 14 or higher

In order to use the Pixie SDK, you must have a valid
<span class="ph">Xandr</span> Unified Pixel ID. This is an alphanumeric
ID that represents a pixel in your app.

<div class="note">

<span class="notetitle">Note:</span> **Google Play**

In order to enable the Android Advertising ID (AAID) , you must include
Google Play Services as a dependency of your app.
<span class="ph">Xandr</span>'s SDK will still function without Google
Play Services but will not produce the desired results.

</div>

<div class="note">

<span class="notetitle">Note:</span> **Android Studio and Gradle **

These instructions assume you are using Android Studio and Gradle. All
of the required AndroidManifest.xml entries and ProGuard changes are
automatically added to your app. If you are using other build systems,
the steps may vary.

</div>

</div>

<div class="section">

## Installation

Install via Maven from your `build.gradle` file as shown below. Note
that the `[1,2)` notation means that when your app is compiled, the
latest version of the SDK in the 1.x release series will be included.
When we release a new version of the SDK, all you have to do to get the
new version is recompile your app. Note that these are top-level blocks,
not part of the buildscript block.

``` pre
// Android: Gradle config to install the SDK
apply plugin: 'kotlin-android'
apply plugin: 'kotlin-android-extensions'
repositories {
    maven{
        url "https://acdn.adnxs.com/mobile/pixiesdk/android/maven/"
    }
}
dependencies {
    implementation 'com.xandr.pixie:pixie-sdk:[1,2)'
    implementation("com.google.android.gms:play-services-ads-identifier:17.0.0")
}
```

</div>

<div class="section">

## Implementation

**Initialization**

Initialize the sdk as early as possible in the App's life cycle using
the initialize() method, passing the pixel id and context as
parameters. 

``` pre
Pixie.initialize(pixel_id: String, context: Context); 
```

**Track Event**

Once the SDK is initialized events can be tracked and submitted
using **fireEvent()** method.  

<div class="note">

<span class="notetitle">Note:</span> Any events being tracked prior to
initialization will be rejected.

</div>

``` pre
Pixie.fireEvent(event: String, params: PixieParams, context: Context);
```

fireEvent() method takes Event string, PixieParams(optional) and
Application context as parameters.

**event: String**

Standard Event strings are defined within the Event class. See below for
the available Standard Event strings. You also have the option to define
Custom Event string(s) in Universal Pixel UI and use it in your app.

Custom Event String(s) should be preregistered using Universal Pixel UI.

**params: PixieParams**

When tracking an event (both standard event and custom event),
optionally you can also pass data associated with that event. Event data
is represented by the PixieParams class. All parameters are optional.

<div class="tablenoborder">

<table class="table" data-cellpadding="4" data-cellspacing="0"
data-summary="" data-frame="border" data-border="1" data-rules="all">
<thead class="thead">
<tr class="header ">
<th id="d15129e168" class="entry cellborder"
style="vertical-align: top">Name</th>
<th id="d15129e171" class="entry cellborder"
style="vertical-align: top">Description</th>
</tr>
</thead>
<tbody class="tbody">
<tr class="odd ">
<td colspan="2" class="entry cellborder"
headers="d15129e168 d15129e171 ">Properties</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15129e168 ">currency : String</td>
<td class="entry cellborder"
headers="d15129e171 ">Currency for the `value` specified.</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15129e168 ">itemId : String</td>
<td class="entry cellborder"
headers="d15129e171 ">A generic ID of the item represented. IDs can also
be passed as an array of comma separated items. Example "itemId1,
itemId2"</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15129e168 ">itemName : String</td>
<td class="entry cellborder"
headers="d15129e171 ">The name of the item represented. Names can also
be passed as an array of comma separated items. Example "itemName1,
itemName2"</td>
</tr>
<tr class="odd ">
<td class="entry cellborder"
headers="d15129e168 ">itemType : String</td>
<td class="entry cellborder"
headers="d15129e171 ">A generic type of the item represented. Types can
also be passed as an array of comma separated items. Example "itemType1,
itemType2"</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15129e168 ">value : String</td>
<td class="entry cellborder"
headers="d15129e171 ">Value of a user performing this event to the
business.</td>
</tr>
<tr class="odd ">
<td colspan="2" class="entry cellborder"
headers="d15129e168 d15129e171 ">Function</td>
</tr>
<tr class="even ">
<td class="entry cellborder"
headers="d15129e168 ">put(key: String, value: String)</td>
<td class="entry cellborder"
headers="d15129e171 ">Arbitrary data defined by the publisher. Enables
the passing of custom event data through key/value pairs. Keys should be
preregistered using Universal Pixel UI. Values can be an array separated
by a comma.</td>
</tr>
</tbody>
</table>

</div>

**context: Context**

An application context

</div>

<div class="section">

## Code Samples

**Initialization**

Code sample: 

**Kotlin**

``` pre
Pixie.initialize("2dad9dcd-de80-4dd1-b900-f4349082ab57",context)
```

**Java**

``` pre
Pixie.initialize("2dad9dcd-de80-4dd1-b900-f4349082ab57",context);
```

**Track Standard Event**

**Page View**

``` pre
Event.PAGE_VIEW
```

The specific page that was visited. 

Code sample: 

**Kotlin**

``` pre
Pixie.fireEvent(Event.PAGE_VIEW,context)
```

**Java**

``` pre
Pixie.fireEvent(Event.PAGE_VIEW,context);
```

**Landing Page**

``` pre
Event.LANDING_PAGE
```

Track landing pages' views.

 Code sample: 

**Kotlin**

``` pre
val landingPageParams = PixieParams(Value = "5.99", Currency = "USD", ItemId = "product_5,product_6", ItemName = "apparel,accessory", ItemType = "shirt,belt")
Pixie.fireEvent(Event.LANDING_PAGE,landingPageParams,context)
```

**Java**

``` pre
PixieParams landingPageParams = new PixieParams("5.99","USD","product_5,product_6", "apparel,accessory","shirt,belt");
Pixie.fireEvent(Event.LANDING_PAGE,landingPageParams,context);
```

**Item View**

``` pre
Event.ITEM_VIEW
```

Track key page views (ex: product page, landing page, article).

 Code sample:

**Kotlin**

``` pre
val itemViewParams = PixieParams(Value = "5.99", Currency = "USD", ItemId = "product_5,product_6", ItemName = "apparel,accessory", ItemType = "shirt,belt")
Pixie.fireEvent(Event.ITEM_VIEW,itemViewParams,context)
```

**Java**

``` pre
PixieParams itemViewParams = new PixieParams("5.99","USD","product_5,product_6", "apparel,accessory","shirt,belt");
Pixie.fireEvent(Event.ITEM_VIEW,itemViewParams,context);
```

**Add To Cart**

``` pre
Event.ADD_TO_CART
```

Track when items are added to a shopping cart (ex: click, landing page
on Add to Cart button).

 Code sample: 

**Kotlin**

``` pre
val addToCartParams = PixieParams(Value = "5.99", Currency = "USD", ItemId = "product_5,product_6", ItemName = "apparel,accessory", ItemType = "shirt,belt")
Pixie.fireEvent(Event.ADD_TO_CART,addToCartParams,context)
```

**Java**

``` pre
PixieParams addToCartParams = new PixieParams("5.99","USD","product_5,product_6", "apparel,accessory","shirt,belt");
Pixie.fireEvent(Event.ADD_TO_CART,addToCartParams,context); 
```

** Initiate Checkout**

``` pre
Event.INITIATE_CHECKOUT
```

Track when people enter the checkout flow (ex: click, landing page on
checkout button).

 Code sample: 

**Kotlin**

``` pre
val initiateCheckOutParams = PixieParams(Value = "5.99", Currency = "USD", ItemId = "product_5,product_6", ItemName = "apparel,accessory", ItemType = "shirt,belt")
Pixie.fireEvent(Event.INITIATE_CHECKOUT,initiateCheckOutParams,context)
```

**Java**

``` pre
PixieParams initiateCheckOutParams = new PixieParams("5.99","USD","product_5,product_6", "apparel,accessory","shirt,belt");
Pixie.fireEvent(Event.INITIATE_CHECKOUT,initiateCheckOutParams,context);
```

**Add Payment Info**

Event.ADD_PAYMENT_INFO

**Track when payment information is added in the checkout flow (ex:
click, landing page on billing info) **

Code sample: 

**Kotlin**

``` pre
val addPaymentInfo = PixieParams(Value = "5.99", Currency = "USD", ItemId = "product_5,product_6", ItemName = "apparel,accessory", ItemType = "shirt,belt")
Pixie.fireEvent(Event.ADD_PAYMENT_INFO,addPaymentInfoParams,context)
```

**Java**

``` pre
PixieParams addPaymentInfoParams = new PixieParams("5.99","USD","product_5,product_6", "apparel,accessory","shirt,belt");
Pixie.fireEvent(Event.ADD_PAYMENT_INFO,addPaymentInfoParams,context);
```

**Purchase**

``` pre
Event.PURCHASE
```

Track purchases or checkout flow completions (ex: Landing on "Thank You"
or confirmation page).

Code sample: 

**Kotlin**

``` pre
let purchaseParams = PixieParams(value = "5.99", currency = "USD", itemId = "product_5,product_6", itemName = "apparel,accessory", itemType = "shirt,belt")
Pixie.fireEvent(Event.PURCHASE, eventParams:purchaseParams)
```

**Java**

``` pre
PixieParams *purchaseParams = [[PixieParams alloc] initWithValue:@"5.99" currency:@"USD" itemId:@"product_5,product_6" itemType:@"apparel,accessory" itemName:@"shirt,belt"];
[Pixie fireEvent:Event.PURCHASE eventParams:purchaseParams]; 
```

**Lead **

``` pre
Event.LEAD
```

Track when someone expresses interest in your offering (ex: form
submission, sign up for trial, registration).

Code sample: 

**Kotlin**

``` pre
val leadParams = PixieParams(Value = "5.99", Currency = "USD")
Pixie.fireEvent(Event.LEAD,leadParams,context)
```

**Java**

``` pre
PixieParams leadParams =  new PixieParams();
leadParams.setValue("5.99");
leadParams.setCurrency("USD");
Pixie.fireEvent(Event.LEAD,leadParams,context);
```

**Track Custom Event**

Custom Events enable publishers to create their own events to track and
submit. To create a custom event, initiate a PixelParams object with the
data to be submitted and pass that object, along with a string
identifier to the Pixie SDK fireEvent method. Custom event data can also
be sent in key-value pairs by using the put method of the PixelParams
object. 

Code samples: 

**Kotlin**

``` pre
val customPixieParams = PixieParams(Value = "5.99", Currency = "USD")
customPixieParams.put("name", "Form Submission")
customPixieParams.put("email", "user1@appnexus.com")
customPixieParams.put("type", "subscribe,newuser")
Pixie.fireEvent("TestCustomEvent", customPixieParams, context)
```

**Java**

``` pre
PixieParams customPixieParams=new PixieParams();
leadParams.setValue("5.99");
leadParams.setCurrency("USD");
customPixieParams.put("name","Form Submission");
customPixieParams.put("email","user1@appnexus.com");
customPixieParams.put("type","subscribe,newuser");
Pixie.fireEvent("TestCustomEvent",customPixieParams,context)
```

</div>

<div class="section">

## Enable Logging

Pixie SDK comes with a debug mode feature that enables logging during
development. This can be turned on by setting the debugMode variable to
true.  All logging will be disabled in the release build.

``` pre
$ adb shell setprop log.tag.PIXIE VERBOSE
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="universal-pixel-sdk.html" class="link">Universal Pixel SDK</a>

</div>

</div>

</div>
