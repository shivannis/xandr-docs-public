# Configure SDK Logging on Android

<div class="body">

This page has instructions for turning logging on and off, and for
setting logging levels.

<div class="p">

How you configure logging changes depending on whether your SDK version
is RC 1.21 or newer. In RC 1.21, we changed the SDK to use the native
Android logging system properties. For more information, see the section
below that corresponds to your SDK version.

- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/configure-sdk-logging-on-android.html#ConfigureSDKLoggingonAndroid-RC1-21andup"
  class="xref" target="_blank">RC 1.21 and up</a>
- <a
  href="https://docs.xandr.com/bundle/mobile-sdk/page/configure-sdk-logging-on-android.html#ConfigureSDKLoggingonAndroid-RC1-20andbelow"
  class="xref" target="_blank">RC 1.20 and below</a>

</div>

<div class="section">

## RC 1.21 and up

As of RC 1.21, Android's logging system properties are used instead of
the SDK's built-in `Clog.clogged`.

To turn on the SDK's logging during development, connect the device via
USB and issue the following command from your terminal:

``` pre
$ adb shell setprop log.tag.OPENSDK VERBOSE
      
```

The logging setting will remain in effect until the device reboots.

For more information about how log tags work on Android, see the
documentation
for <a href="https://developer.android.com/reference/android/util/Log"
class="xref" target="_blank">Log.isLoggable()</a>.

For more information about how to use ADB shell commands, see <a
href="https://developer.android.com/studio/command-line/adb#shellcommands"
class="xref" target="_blank">ADB Shell Commands</a>.

</div>

<div class="section">

## RC 1.20 and below

In versions RC 1.20 and below, by default, SDK logging is turned on. You
can turn it off as follows:

``` pre
// Turn off the log messages emitted by the SDK.
Clog.clogged = true;
    
```

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="android-sdk-code-samples.html" class="link">Android SDK Code
Samples</a>

</div>

</div>

</div>
