# Paperbank Pocket

### Paper wallets / keychains using a Pocket Photo printer

Now that Pocket Photo printers have become cheaper I decided to build a Paperbank-like Wallet / Keychain Generator using bitcore-lib and the qrcode library.

Other cool things used:

- BIP38
- Coffeescript
- Browserify

Then just plain HTML and CSS, screenshot and print how many Paper Keys / Paper Wallets you like!

### [Video](https://vimeo.com/156742301)

<a href="https://vimeo.com/156742301">
![Paperbank Pocket video - play](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket_play_small.png)
</a>

### Screenshots

1 - Load the app, a key has been generated for you, now **take a screenshot** and **send it to the Printer app**

<a href="http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket1.mp4">
![step1 - screenshot](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket_small1.png)
</a>
<a href="http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket2.mp4">
![step2 - screenshot](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket_small2.png)
</a>
<a href="http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket3.mp4">
![step3 - screenshot](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket_small3b.png)
</a>

2 - Select "Fit Page" (instead of "Fill")

3 - Start to print!

### Try / Use this project:

#### http://pocket.paperbank.it/

or

#### Host the project yourself

Host the project yourself, re-generate the bundle using browserify for extra security or if you want to make modifications (`./build.sh`)
Then host it somewhere (for example with `python -m SimpleHTTPServer`, then visit <http://localhost:8000>), bundle it in a phonegap/cordova/webview app or simply open `index.html` !

Enjoy!

### Setup

    npm install

### Rebuild

    ./build.sh

### Host (run)

    python -m SimpleHTTPServer 3000

then visit <http://localhost:3000>
or (bind to any address):

    python -c 'import BaseHTTPServer as bhs, SimpleHTTPServer as shs; bhs.HTTPServer((\"0.0.0.0\", 3000), shs.SimpleHTTPRequestHandler).serve_forever()'

or simply open `index.html`

---

### Other Infos on Why

This project is meant to be used with Pocket Photo Printers like the one shown in this amazon uk search:

https://www.amazon.co.uk/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=pocket+photo+printer

I got mine for ~70 gbp (99$) on aliexpress: http://www.aliexpress.com/item/Pocket-Photo-Printer-PoPo-Pocket-Photo-2-PD239-NO-NEED-INK-Mini-Portable-Mobile-Photo-Printer/32516573659.html

I reckon the price of those will drop even more next years.

The paper is not cheap (10-20p per sheet) but the good thing is that the ink is inside the paper, so you just need to get the paper. You have to use Zink paper of the same size of the printer.

I found it awesome!

Bare in mind it's still thermal paper so don't leave under direct sunlight and you don't have to expose it under heat, you can laminate it some way but not with hot lamination, to make it water-resistant.

Also, after I'm done with creating my paper wallets I bring it with me to use it with my phone basically as a Polaroid. I take photos of friends and give them the photo as a present. The cool thing is that the software from the one I have lets you embed QR codes, so I upload the picture I took on S3 and put the link in the qr code on the photo itself, pretty cool, but enough for the promo of this gadget, let's make paper wallets!

Remember that it's best to generate the key while the devices are off the internet and to delete all the copies of the screenshot taken on the device.

### TODO:

Features coming:

- BIP38

like in the original paperbank.


original paperbank project: http://paperbank.it

#### by [@makevoid](https://twitter.com/makevoid)


----

ps

advices to new programmers that want to create bitcoin apps: put a project down (php, html, js wathever but put it down on code on a repo), then leave it alone, look at bitcoin for a while then after some time look again at your project, you will see the possibilities in modifiying it, to adapt your app, your project, your code to new purposes !

notes to other people: bluetooth controlled printer + web browser is an infinitely, incommensurable thing, check more in the pbd book (soon™...)
