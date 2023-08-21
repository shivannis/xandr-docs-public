# Build the Android SDK From Source

<div class="body">

This page has instructions for including the source code of our Android
SDK in your project and building it.

If you just want to install using Maven or download a JAR, see the
Android section of <a
href="https://docs.xandr.com/bundle/mobile-sdk/page/build-the-android-sdk-from-source.html#"
class="xref" target="_blank">Integrate the SDK</a>.

<div class="section">

## Step 1. Clone the repo

Run this command in your terminal:

``` pre
git clone https://github.com/appnexus/mobile-sdk-android.git    
```

The cloned directory will look something like:

``` pre
├── examples
│   └── SimpleBanner   // Simple example app
├── mediation
│   ├── mediatedviews  // Mediation adaptors, one per network
│   └── mediating      // Support for other networks mediating our SDK
├── sdk                // SDK sources
      
```

<div class="p">

<div id="ID-000003ae__note-890d04b8-5825-408d-a20d-3beebf4c355f"
class="note">

<span class="notetitle">Note:</span> The SDK and each of the mediation
adaptors are standalone libraries.

</div>

</div>

</div>

<div class="section">

## Step 2. Add the source to your project

Click <span class="ph menucascade"><span class="ph uicontrol">File
</span> \> <span class="ph uicontrol"> New </span> \>
<span class="ph uicontrol"> Import Module</span></span> (or your IDE's
equivalent) and enter the location of the SDK sources you just cloned.
Make sure the sources are actually copied into your project so you can
edit the code.

</div>

<div class="section">

## Step 3. Configure build settings

Include the SDK at the top of your `settings.gradle` file:

``` pre
include ':app', ':sdk' 
```

Add a new line in the `dependencies` block of your app's `build.gradle`
file:

``` pre
dependencies {
    compile project(":sdk")
}      
```

<div class="sectiondiv">

At this point you should be able to build your app with the SDK included
as a library.

</div>

</div>

<div class="section">

## Related Topics

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/android-sdk-integration-instructions.html"
class="xref" target="_blank">Android SDK Integration Instructions</a>

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/xandr-mobile-sdks.html"
class="xref" target="_blank"><span class="ph">Xandr</span> Mobile
SDKs</a>

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-banners-on-android.html"
class="xref" target="_blank">Show Banners</a>

<a
href="https://docs.xandr.com/bundle/mobile-sdk/page/show-interstitials-on-android.html"
class="xref" target="_blank">Show Interstitials</a>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-integration.html" class="link">Android SDK
Integration</a>

</div>

</div>

</div>
