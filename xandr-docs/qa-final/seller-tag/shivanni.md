# Ad Object API

|Column1|Column2|Column3|
|-------|-------|-------|
|```adRequested	```|```function(){}```|N/A|
|```adAvailable```|```function(adObj){}```|```adObj = {```<br>```cpm: 10,```<br>```cpm_publisher_currency: 10,```<br>```publisher_currency_code: '$',```<br>Ad **Type** can be a banner, video, or native. See the adType object below for more examples.<br>When source is real-time bidding (rtb), the Ad Object includes the ad; when source is client-side mediation (csm), it includes just the creative ID.|