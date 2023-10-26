---
Title : Configure SDK Logging on iOS
Description : This page has instructions for:
ms.custom : android-ios

- turning logging on and off, and for setting logging levels
- enabling subscription for notifications as well as retrieving
notification status
## Enable and set the logging level
You can use below methods on the `ANLogManager` interface to set the
logging level of the iOS SDK:
- `getANLogLevel`
- `setANLogLevel`
## Example
``` pre
[ANLogManager setANLogLevel:ANLogLevelDebug];
```
<b>Note:</b> See `ANLogManager.h` for all
---


# Configure SDK Logging on iOS



This page has instructions for:

- turning logging on and off, and for setting logging levels
- enabling subscription for notifications as well as retrieving
  notification status



## Enable and set the logging level

You can use below methods on the `ANLogManager` interface to set the
logging level of the iOS SDK:

- `getANLogLevel`
- `setANLogLevel`





## Example



``` pre
[ANLogManager setANLogLevel:ANLogLevelDebug];
```







<b>Note:</b> See `ANLogManager.h` for all
available log levels









## Enable and disable notification observer and retrieve notification status

Additionally, you have an option to enable logs to be posted as
notification if your app wants to ingest these logs and do further
processing. You can use below methods on the `ANLogManager` interface to
set and retrieve the notification status of the iOS SDK logs:

- `setNotificationsEnabled`  

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





## Example



``` pre
// To Enable Notifications Observer
[ANLogManager setNotificationsEnabled:YES];
// To get the status of current Notifications Observer
[ANLogManager isNotificationsEnabled]
```








