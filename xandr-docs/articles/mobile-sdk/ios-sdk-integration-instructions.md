---
Title : iOS SDK Integration Instructions
Description : This page describes how to integrate our SDK with your project. Follow
ms.custom : android-ios
---


# iOS SDK Integration Instructions



This page describes how to integrate our SDK with your project. Follow
the instructions in this page to set up our SDK to show ads in your app.
For instructions on showing different ad types, see our various <a
href="ios-sdk-ad-units.md"
class="xref" target="_blank">ad unit</a> pages. 



## Requirements

- This SDK requires **MacOS X 10.15.4** and **Xcode version 12.4**.
- In order to show ads, you must have a valid
  Xandr placement ID. 
- Configure App Transport Security (ATS).



<b>Note:</b>

App Transport Security

iOS 9 introduced a new privacy feature called <a
href="https://developer.apple.com/library/archive/documentation/General/Reference/InfoPlistKeyReference/Articles/CocoaKeys.md#//apple_ref/doc/uid/TP40009251-SW33"
class="xref" target="_blank">App Transport Security (ATS)</a>. ATS
blocks non-HTTPS requests by default.

To show ads using our SDK, you must include the following exception in
the `info.plist` file of each app which contains our SDK:

``` pre
<!-- iOS: plist settings to allow non-HTTPS ads -->
<key>NSAppTransportSecurity</key>
<dict>
    <key>NSAllowsArbitraryLoads</key>
    <true/>
</dict>
```

 If you are using v2.13 or greater of our SDK and would like to show
only ATS-compliant ads, you can enable HTTPS ads in your app using the
instructions in <a
href="request-ads-over-https-on-ios.md"
class="xref" target="_blank">Request Ads over HTTPS</a>.







## Installation

**Step 1. Get and install the SDK**

There are five ways to get our SDK:

- CocoaPods
- Carthage
- Download from source
- XCFramework
- Swift Package Manager

**CocoaPods**

If you are unfamiliar with CocoaPods review
their <a href="https://cocoapods.org/" class="xref"
target="_blank">installation and user guides</a>. Once you have
CocoaPods installed:

- Use Terminal or your command line editor of choice, navigate to the
  root directory of your project and create a podfile.

  ``` pre
  pod init
  ```

- Using a text editor, open the newly created podfile. Set the platform
  version to 10.0 and add pod 'AppNexusSDX' to the target.

  ``` pre
  # iOS: Podfile config to include our SDK
  platform :ios, '10.0'
  project 'FunBanner'
  target 'FunBanner' do
    pod 'AppNexusSDK'
  end
  ```

- Save your changes and return to Terminal and enter: 

  ``` pre
  pod install
  ```

- CocoaPods will download the Xandr SDK and
  create a workspace in the project directory. If your project is
  currently open, close it and open the workspace.

**Carthage**

If you are unfamiliar with Carthage review
their <a href="https://github.com/Carthage/Carthage/blob/master/README.md"
class="xref" target="_blank">installation and user guides</a>. Once you
installed Carthage:

- Open the Terminal.app and navigate to the root directory of your
  project. Create a Cartfile.

  ``` pre
  touch Cartfile
  ```

- Open the file in Xcode to edit it.

  ``` pre
  open -a Xcode Cartfile
  ```

- Add the following line to the file.

  ``` pre
   # iOS: Carthage config to include our SDK
  github "appnexus/mobile-sdk-ios" 
  ```

  

  <b>Tip:</b> You can use editor's other than
  Xcode to edit the Cartfile but be aware that other editing programs
  such as TextEdit might automatically include smart quotes instead of
  straight quotes. Carthage will not recognize content within smart
  quotes and not perform correctly.

  

- Run below command 

  ``` pre
  carthage update --use-xcframeworks
  ```

- To Use **AppNexusSDK** SDK, Add
  the **AppNexusSDK.xcframework** and **OMSDK\_AppNexus.xcframework** to
  the Embedded
  Binaries (Target- \> General-
  \> Embedded Binaries) section
  by clicking the **+ icon**

- Drag the built `.xcframework` bundles
  from `Carthage/Build` into Embedded
  Binaries (Target- \> General-
  \> Embedded Binaries) section
  by clicking the + icon

- If you are using Carthage for an application, select "Embed & Sign",
  otherwise "Do Not Embed".

**Download from source**

- Download and unzip or clone the latest release of our SDK from
  our <a href="https://github.com/appnexus/mobile-sdk-ios/releases/latest"
  class="xref" target="_blank">Github Release</a> page.
- Once the source from Github is downloaded, link
  the **AppNexusSDK.Xcodeproj** in your **Xcode project**. 
- Open the app’s Xcode project or workspace. Right click on Project and
  Click on **Add Files to "Project Name**". 

 ![ios sdk integration instructions-Part A](media/ios-sdk-integration-instructions-a.png)
 
<ul>
<li>Go to AppNexusSDK project folder and select
the <strong>AppNexusSDK.Xcodeproj</strong>. Make sure to select <span
class="ph uicontrol">Copy items if needed and select <span
class="ph uicontrol">Add.</li>
</ul>
</figure>

![ios sdk integration instructions-Part B](media/ios-sdk-integration-instructions-b.png)
 

<li>Click Link Binary With
Libraries (Target-&gt;General-&gt;Link Binary With Libraries) and
select <strong>AppNexusSDK.framework</strong>.</li>
</ul>
</figure>

![ios sdk integration instructions-Part C](media/ios-sdk-integration-instructions-c.png)
 

![ios sdk integration instructions-Part D](media/ios-sdk-integration-instructions-d.png)
 


**XCFramework**

- Download and unzip the latest version
  of **AppNexusSDK.xcframework.zip** of our SDK
  from <a href="https://github.com/appnexus/mobile-sdk-ios/releases"
  class="xref" target="_blank">Github Releases page</a>. **AppNexusSDK.xcframework.zip** contains **AppNexusSDK.xcframework**, **AppNexusNativeSDK.xcframework** and** OMSDK\_AppNexus.xcframework**.
- Open the app’s Xcode project or workspace. 
- Go to the app target’s **General** configuration page.
- To Use **AppNexusSDK SDK**, Add
  the **AppNexusSDK.xcframework** and **OMSDK\_AppNexus.xcframework** to
  the Embedded
  Binaries (Target- \> General-
  \> Embedded Binaries) section
  by clicking the **+ icon**.
- Or To use **AppNexusNativeSDK SDK**, Add
  the **AppNexusNativeSDK.xcframework** and **OMSDK\_.xcframework** to
  the Embedded
  Binaries (Target- \> General-
  \> Embedded Binaries) section
  by clicking the **+ icon**.

![ios sdk integration instructions-Part E](media/ios-sdk-integration-instructions-e.png)
 

<li>Select Add Files from the
drop-down and navigate to location where you have the
unzipped <strong>AppNexusSDK.xcframework</strong>
and <strong>OMSDK_AppNexus.xcframework</strong>
folders.</li>
</ul>
</figure>
 ![ios sdk integration instructions-Part F](media/ios-sdk-integration-instructions-f.png)
 

<li>Select the unzipped folders and click <span
class="ph uicontrol">Open.</li>
</ul>
</figure>

![ios sdk integration instructions-Part G](media/ios-sdk-integration-instructions-g.png)
 
<li>The added <strong>AppNexusSDK.xcframework</strong>
and <strong>OMSDK_AppNexus.xcframework</strong>
would be visible under the Framework,
Libraries, and Embedded Content section.</li>
</ul>
</figure>

![ios sdk integration instructions-Part H](media/ios-sdk-integration-instructions-h.png)
 


**Swift Package Manager**

- Copy the
  URL <a href="https://github.com/appnexus/mobile-sdk-ios.git" class="xref"
  target="_blank">https://github.com/<span
  class="ph">appnexus/mobile-sdk-ios.git</a> and check the latest
  version of SDK
  in <a href="https://github.com/appnexus/mobile-sdk-ios/releases"
  class="xref" target="_blank">Github Releases page</a>.
- Open the app’s Xcode project or
  workspace. Select Project → Swift
  Package and Click on **+ icon**.

![ios sdk integration instructions-Part I](media/ios-sdk-integration-instructions-i.png)
 
<li>Paste the Github URL <a
href="https://github.com/appnexus/mobile-sdk-ios.git" class="xref"
target="_blank">https://github.com/<span
class="ph">appnexus/mobile-sdk-ios.git</a> mentioned earlier in
search bar of Choose Package
Repository page and click <span
class="ph uicontrol">Next.</li>
</ul>
</figure>
![ios sdk integration instructions-Part J](media/ios-sdk-integration-instructions-j.png)
 

<li>Select the appropriate version from the drop-down (checked in <a
href="https://github.com/appnexus/mobile-sdk-ios/releases" class="xref"
target="_blank">Github Releases page</a> as mentioned earlier) and click
Next.</li>
</ul>
</figure>

![ios sdk integration instructions-Part K](media/ios-sdk-integration-instructions-k.png)
 

<li>Select the applicable <strong>Package Product</strong> and
click Finish to complete the
setup.</li>
</ul>
</figure>

![ios sdk integration instructions-Part L](media/ios-sdk-integration-instructions-l.png)
 

<li>The added <strong>AppNexusSDK</strong> package would be visible
under the Framework, Libraries, and Embedded
Content section.</li>
</ul>
</figure>

![ios sdk integration instructions-Part M](media/ios-sdk-integration-instructions-m.png)
 


For instructions on getting set up for mediation, see <a
href="mediate-with-ios.md"
class="xref" target="_blank">Mediate with iOS</a>.





## Related Topics

<a href="show-banners-on-ios.md" class="xref">Show Banners</a>

<a href="show-interstitials-ads-on-ios.md" class="xref">Show
Interstitials</a>






