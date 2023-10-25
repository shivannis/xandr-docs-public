---
Title : Build the Android SDK From Source
Description : This page has instructions for including the source code of our Android
SDK in your project and building it.
ms.custom : android-sdk

---


# Build the Android SDK From Source



This page has instructions for including the source code of our Android
SDK in your project and building it.

If you just want to install using Maven or download a JAR, see the
Android section of <a
href="build-the-android-sdk-from-source.md#"
class="xref" target="_blank">Integrate the SDK</a>.



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





<b>Note:</b> The SDK and each of the mediation
adaptors are standalone libraries.









## Step 2. Add the source to your project

Click File
 \>  New  \>
 Import Module (or your IDE's
equivalent) and enter the location of the SDK sources you just cloned.
Make sure the sources are actually copied into your project so you can
edit the code.





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



At this point you should be able to build your app with the SDK included
as a library.







## Related Topics

<a
href="android-sdk-integration-instructions.md"
class="xref" target="_blank">Android SDK Integration Instructions</a>

<a
href="xandr-mobile-sdks.md"
class="xref" target="_blank">Xandr Mobile
SDKs</a>

<a
href="show-banners-on-android.md"
class="xref" target="_blank">Show Banners</a>

<a
href="show-interstitials-on-android.md"
class="xref" target="_blank">Show Interstitials</a>






