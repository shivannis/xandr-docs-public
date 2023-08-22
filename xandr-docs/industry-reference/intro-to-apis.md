# Introduction to APIs

<div class="body">

A lot of people toss around the phrases like "open APIs" or "robust
APIs," without really knowing what an API is. For anyone who is new to
APIs or hasn't used them, here's an introduction.

<div class="section">

## What is an API?

<div class="p">

An Application Programming Interface is a way to interact with a system
or software without going through a graphical user interface (UI). The
key thing to realize about the <span class="ph">AppNexus</span> API, and
most of the APIs you'll encounter, is that:

<div id="ID-0000160e__note_s1l_ppt_4wb" class="note">

<span class="notetitle">Note:</span>

In the end, all the <span class="ph">AppNexus</span> APIs do is read,
write, update, and delete things in our databases.

</div>

</div>

At <span class="ph">AppNexus</span> these things include campaigns,
segments, platform members, line items, inventory categories, reporting
data, etc. If you had access to our database directly, you could go in
and manually look at or add these things. Customers don't have that
direct access both for logistical and information security reasons, so
they use our API commands instead. The APIs also have nice search,
filter, and other capabilities built in; if you want to search for one
of your campaigns with the name "Cheese_of_month", you can do that with
an API request rather than using a MySQL query of the database.

</div>

<div class="section">

## Example: New York Times API

The New York Times has a ton of APIs, but one of them is the Bestseller
List API, which you can see documented
<a href="https://developer.nytimes.com/docs/books-product/1/overview"
class="xref" target="_blank">here</a>. Let’s say you want to post the
list of bestsellers on your blog each week---you can auto-grab them with
the API. The API also allows you to search and grab details about
specific best sellers, including historical rank information and links
to New York Times reviews and book excerpts. So if you wanted to post
all bestselling books with “bird” in the title from the last 20 years,
you could do that. Or you could build a button into your blog that when
clicked returns the week's bestseller list, using a behind-the-scenes
call to the New York Times API.

Now you could also go look on the New York Times's website, copy the
list, and then manually type them into your blog. But wouldn't you
rather automate this process?

</div>

<div class="section">

## Why Use an API Rather Than a UI?

Many systems, such as the <span class="ph">AppNexus</span> Console, or
the Facebook advertising platform, have both a UI and an API. When using
these systems, you might use only <span class="ph"></span>, only the
API, or a combination of both. You might use the API for the following
reasons:

- Automate certain functions, such as the examples above.
- Bulk upload/modifications. You can write a script that creates several
  objects at once, or changes the names of all your objects at once.
- Access info or features not available in <span class="ph"></span>.
- Get info in the right format to manipulate, such as a text-based
  comma-separated list.
- Build your own UI. For example let's say you want a simplified version
  that has a fraction of the feature set for simplicity of use.
- Build tools that work with a system you have already created or use.
  Maybe you use another ad server and want to pull reports every day
  from <span class="ph">AppNexus</span> into your ad server.
- Personal preference. You may prefer the command line to clicking
  buttons.

</div>

<div class="section">

## Other Nice Things About APIs

- APIs allow you to give out different kinds of permissions and track
  who is doing what.
- APIs allow you to have unchanging face on changing datasets. If an
  organization changes their underlying data structure, the code of the
  API can be changed without the front-facing API commands changing.

</div>

</div>
