---
Title : Customize Video Player Options on Android
Description : You can customize the following video player controls:
ms.custom : android-sdk

- The clickthrough control
- The mute button
- The fullscreen button for outstream video
- Volume control
To show or hide the ClickThrough control on the video player:
``` pre
private boolean showClickThroughControl = false;
```
The default is true.  Setting it to false will make the entire video
---


# Customize Video Player Options on Android



You can customize the following video player controls:

- The clickthrough control
- The mute button
- The fullscreen button for outstream video
- Volume control

To show or hide the ClickThrough control on the video player:

``` pre
 private boolean showClickThroughControl = false;
```

The default is true.  Setting it to false will make the entire video
clickable.

To change the ClickThrough text on the video player:

``` pre
 private String clickThroughText = null;
```

  
To show or hide the fullscreen control (for Banner Video only):

``` pre
private boolean showFullScreenControl = false;
```

  
To show or hide the top bar (ClickThrough and Skip controls):

``` pre
 private boolean showTopBar = false;
```

  
To show or hide the ad text next to the ClickThrough control:

``` pre
private boolean showAdText = false;
```

  
To change the ad text on the video player:

``` pre
private String adText = null;
```

  
To show or hide the volume control:

``` pre
 private boolean showVolumeControl = false;
```

To start with video sound on or off: 

``` pre
private ANInitialAudioSetting initalAudio;
```

By default, sound will be on for InstreamVideo and off for Banner Video.




