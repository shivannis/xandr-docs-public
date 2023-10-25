---
Title : Android SDK Initialization v8.0
Description : Publishers with Android SDK v8.0, are required to initialize
ms.custom : android-sdk

---


# Android SDK Initialization v8.0



Publishers with Android SDK v8.0, are required to initialize
Xandr SDK before making an ad request. When
using Xandr Mobile Ads SDK for Android SDK v8,
the init() method must be called prior to any other SDK
operations. Without this initialization no Ad request would go through
and the SDK would throw an exception.  
  



## API SIGNATURE

``` pre
/**
 * Initialize Xandr Ads SDK
 * @param memberId for initialising the XandrAd,
 * @param context for pre-caching the content.
 * @param preCacheContent enable / disable pre-caching of the content.provides flexibility to pre-cache content, such as fetch userAgent, fetch AAID and activate OMID. Pre-caching will make the future ad requests faster.
 * @param initListener for listening to the completion event.
 * */
public static void init(int memberId, Context context, boolean preCacheContent, final InitListener initListener)
```



<b>Note:</b> This below method is available
post v8.4



``` pre
/**
  * Initialize Xandr Ads SDK
  * @param memberId for initialising the XandrAd,
  * @param context for pre-caching the content.
  * @param preCacheContent enable / disable pre-caching of the content.provides flexibility to pre-cache content, such as fetch userAgent, fetch AAID and activate OMID. Pre-caching will make the future ad requests faster.
  * @param preCacheMraidSupports enable / disable pre-caching of the intent activities, false by default.
  * @param initListener for listening to the completion event.
  * */
 public static void init(int memberId, final Context context, boolean preCacheContent, boolean preCacheMraidSupports, final InitListener initListener)
```





## Example

**XandrAd.init() can be used as follows:  
**  

``` pre
XandrAd.init(1234, mContext, true, new InitListener() {
    @Override
    public void onInitFinished(boolean success) {
        Toast.makeText(getActivity(), "Init Finished with " + success, Toast.LENGTH_SHORT).show();
    }
});
```






