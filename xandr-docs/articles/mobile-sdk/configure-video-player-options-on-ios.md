---
Title : Configure Video Player Options on iOS
Description : You can customize the following video player controls:
- The clickthrough control
- The mute button
- The fullscreen button for outstream video
- Volume control
To show or hide the ClickThru control:
``` pre
@property (nonatomic,assign) BOOL showClickThruControl;
```
The default is YES. NO makes the entire video clickable.
ms.custom : ios-sdk
---


# Configure Video Player Options on iOS



You can customize the following video player controls:

- The clickthrough control
- The mute button
- The fullscreen button for outstream video
- Volume control

To show or hide the ClickThru control:

``` pre
@property (nonatomic,assign) BOOL showClickThruControl;
```

The default is YES. NO makes the entire video clickable.

To change the ClickThru text:

``` pre
@property (nonatomic, strong) NSString *clickThruText;
```

To show or hide the fullscreen control (for Banner Video only):

``` pre
@property (nonatomic,assign) BOOL showFullScreenControl;
```

To show or hide the top bar (ClickThrough and Skip controls):

``` pre
@property (nonatomic,assign) BOOL showTopBar;
```

To show or hide the ad text next to the ClickThru control:

``` pre
@property (nonatomic,assign) BOOL showAdText;
```

To change the ad text:

``` pre
@property (nonatomic, strong) NSString *adText;
```

To show or hide the volume control:

``` pre
@property (nonatomic,assign) BOOL showVolumeControl;
```

To start with video sound on or off: 

``` pre
@property (nonatomic,assign) ANInitialAudioSetting initalAudio;
```

By default, sound will be on for InstreamVideo and off for Banner Video




