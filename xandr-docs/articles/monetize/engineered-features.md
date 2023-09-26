---
Title : Engineered Features
Description : Engineered features are bidstream signals representing proprietary,
high-quality optimization components developed by
Xandr, based on historical data analyzed by
proprietary Xandr data science and algorithms.
---


# Engineered Features



Engineered features are bidstream signals representing proprietary,
high-quality optimization components developed by
Xandr, based on historical data analyzed by
proprietary Xandr data science and algorithms.
We use these features ourselves in our own optimization tools, applying
them at scale across the Xandr platform and
constantly refining their predictions based on incoming data. Now you
can also use them as building blocks in <a
href="https://docs.xandr.com/bundle/advanced-ads-toolset/page/custom-models.html"
class="xref" target="_blank">custom bidding models</a>.

Most engineered features predict the probability of a specific outcome
that will benefit your performance goals. For example, you can use
predicted video viewability rate to modify your bid price for video
inventory.

Market Rate Estimation

Market rate estimation uses historical data to estimate bids. The
available features are:

- **Estimated Clear Price (ECP)**  
  An estimate of a bid that is likely to win the impression from a given
  publisher.

- **Estimated Average Price (EAP)**  
  An estimate of a bid that is likely to win about half of impressions.

  For information on how to use ECP and EAP with
  AppNexus Programmable Bidder, see <a
  href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-smart-leaves.html"
  class="xref" target="_blank">Smart Leaves</a>.

Viewability Predictions

Viewability predictions use historical data to predict web display and
video viewability and video completion rates. The available features
are:

- **Predicted Video Completion Rate**  
  A prediction of how likely a video impression is to be fully played
  (video completes/total impressions).
- **Predicted IAB Viewability Rate (Previously known as "Estimated IAB
  Viewthrough Rate")**  
  A prediction of how likely a web display impression is to be viewable
  (viewed/measured impressions), judged by the IAB standard.
- **Predicted IAB Viewability Rate Over Total**  
  A prediction of how likely a web display impression is to be viewable
  (viewed/total impressions), judged by the IAB standard.
- **Predicted IAB Video Viewability Rate**  
  A prediction of how likely a web video impression is to be viewable
  (viewed/measured impressions), judged by the IAB standard.
- **Predicted IAB Video Viewability Rate Over Total**  
  A prediction of how likely a web video impression is to be viewable
  (viewed/total impressions), judged by the IAB standard.
- **Predicted Video Viewability Rate**  
  A prediction of how likely a web video impression is to be viewable
  (viewed/measured impressions), judged by a custom standard\*.
- **Predicted Video Viewability Rate Over Total**  
  A prediction of how likely a web video impression is to be viewable
  (viewed/total impressions), judged by a custom standard\*.
- **Predicted Viewability Rate**  
  A prediction of how likely a web display impression is to be viewable
  (viewed/measured impressions), judged by a custom standard\*.
- **Predicted Viewability Rate Over Total**  
  A prediction of how likely a web display impression is to be viewable
  (viewed/total impressions), judged by a custom standard\*.

\*The custom standard is as follows. Instream video: 100% pixels in
view, 50% duration, 15-second duration cap, sound on. Outstream video:
100% pixels in view, 50% duration cap, 15-second cap, sound off. Display
ads: 100 pixels in view for 1 continuous second.

For more information on how video viewability is measured, see
<a href="introduction-to-viewability.html" class="xref">Introduction to
Viewability</a>. For information on how to use these viewability
predictions with AppNexus Programmable Bidder,
see <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-language-features.html"
class="xref" target="_blank">Bonsai Features</a> and <a
href="https://docs.xandr.com/bundle/data-science-toolkit/page/bonsai-smart-leaves.html"
class="xref" target="_blank">Smart Leaves</a>.




