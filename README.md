# synchrony-sunspot
__WORK IN PROGRESS__

This is a simple shim that replaces the Net::HTTP driver in RSolr with an em-synchrony+em-http-request driver and then wires it into Sunspot.

## Usage

It's a pretty simple usage. Just include the gem in your project and it will do the rest.

### NOTE

This driver will NOT work if you are not running in an em-synchrony loop. If you run this in a regular eventmachine loop or in regular old code, it will simply hang or error out.

----

See the LICENSE file for licensing details.