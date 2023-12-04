---
Title : TCP-IP
Description : Now that we've learned about HTTP, I'm going to talk about how browsers
ms.date : 10/28/2023
ms.custom : industry-reference
and clients actually send and receive HTTP requests and responses to and
from each other. I'm going to compare an HTTP response to the process of
---


# TCP-IP



Now that we've learned about HTTP, I'm going to talk about how browsers
and clients actually send and receive HTTP requests and responses to and
from each other. I'm going to compare an HTTP response to the process of
a package being sent to you in the mail. If you ordered cheese online it
would be pretty gross if the mailman left unwrapped pieces of cheese in
your mail box. So the cheese store takes the time to wrap the cheese in
plastic wrap, cover it in packing peanuts and slap a mailing label on
the box.

During delivery, the post office first reads the zip code and sends it
to the local post office, which then reads the address and sends it to
your building. When you see it on your front step you know it's for you
because it says your apartment number and your name, not your roommate's
name. Then you open the box, pull the cheese out, unwrap the cheese and
enjoy a slice. Without the labeling and packaging the cheese would not
have found its way to you, clean and edible.

![TCP IP](media/tcp-ip.png)



## TCP/IP (Our wiki software does not allow "/" in page titles)

Like the cheese, HTTP Requests and Responses need to be labeled and
packaged correctly to travel from the client to the intended server and
back. Your HTTP Request/Responses are sent across the Internet and back
in the following "layers."

**Application Layer:** In our use case, the application would be HTTP,
or the cheese itself. This can be any application, such as FTP or
Telnet. This is the request/response.

**Transport Layer:** Transmission Control Protocol (TCP) is used almost
exclusively to transfer HTTP messages across the internet. TCP is like
the wrapping that ensures the cheese gets to you clean and in one whole
piece. TCP ensures all HTTP packets are delivered and put in order.

**Network Layer:** This Layer is like the mailing address on the cheese
package. This layer is referred to as the Internet Protocol Layer, which
allows the request and response to know which server and port to
actually go to in the Network. The URL address is used by Domain Name
Systems to map to the IP address. For HTTP URL, the port defaults to
Port 80 which is the standard HTTP port. We'll talk more about ports
later.

These are the first three layers that allow an HTTP Request/Response to
be sent through the internet intact and to the right destination






