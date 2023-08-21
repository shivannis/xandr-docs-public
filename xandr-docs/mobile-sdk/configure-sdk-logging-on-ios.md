# Configure SDK Logging on iOS

<div class="body">

This page has instructions for:

- turning logging on and off, and for setting logging levels
- enabling subscription for notifications as well as retrieving
  notification status

<div class="section">

## Enable and set the logging level

You can use below methods on the `ANLogManager` interface to set the
logging level of the iOS SDK:

- `getANLogLevel`
- `setANLogLevel`

</div>

<div class="section">

## Example

<div class="p">

``` pre
[ANLogManager setANLogLevel:ANLogLevelDebug];
```

</div>

<div class="p">

<div class="note">

<span class="notetitle">Note:</span> See `ANLogManager.h` for all
available log levels

</div>

</div>

</div>

<div class="section">

## Enable and disable notification observer and retrieve notification status

Additionally, you have an option to enable logs to be posted as
notification if your app wants to ingest these logs and do further
processing. You can use below methods on the `ANLogManager` interface to
set and retrieve the notification status of the iOS SDK logs:

- `setNotificationsEnabled `

- `isNotificationsEnabled`

  ``` pre
  /**
   Enable to subscribe for Notifications
   */
   + (void)setNotificationsEnabled:(BOOL)enabled;
   /**
  Get Notification Status
   */
   + (BOOL)isNotificationsEnabled;
  ```

</div>

<div class="section">

## Example

<div class="p">

``` pre
// To Enable Notifications Observer
[ANLogManager setNotificationsEnabled:YES];
// To get the status of current Notifications Observer
[ANLogManager isNotificationsEnabled]
```

</div>

</div>

</div>

<div class="related-links">

<div class="familylinks">

<div class="parentlink">

**Parent topic:**
<a href="ios-sdk-code-samples.html" class="link">iOS SDK Code
Samples</a>

</div>

</div>

</div>
