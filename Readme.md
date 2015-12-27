# Paperbank Pocket

### Paper wallets / keychains using a Pocket Photo printer

Now that Pocket Photo printers have become cheaper I decided to build a Paperbank-like Wallet / Keychain Generator using bitcore-lib and the qrcode library.

Other cool things used:

- BIP38
- Coffeescript
- Browserify

Then just plain HTML and CSS, screenshot and print how many Paper Keys / Paper Wallets you like!

### [Video](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket.mp4)

<a href="http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket.mp4">
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

### Use this project:

#### http://url.mkv.net/soon

soon!

or

#### Host the project yourself

Host the project yourself, re-generate the bundle using browserify for extra security or if you want to make modifications (`./build.sh`)
Then host it somewhere (for example with `python -m SimpleHTTPServer`, then visit <http://localhost:8000>), bundle it in a phonegap/cordova/webview app or simply open `index.html` !

Enjoy!

---

### Other Infos on Why

This project is meant to be used with Pocket Photo Printers like the one shown in this amazon uk search:

https://www.amazon.co.uk/s/ref=nb_sb_noss?url=search-alias%3Daps&field-keywords=pocket+photo+printer

I got mine for ~70 gbp (99$) on aliexpress: http://www.aliexpress.com/item/Pocket-Photo-Printer-PoPo-Pocket-Photo-2-PD239-NO-NEED-INK-Mini-Portable-Mobile-Photo-Printer/32516573659.html

I reckon the price of those will drop even more next years.

The paper is not cheap () but the good thing is that the ink is inside the paper. You have to use Zink paper of the same size of the printer.

Also the best thing is that they can be laminated with a standard hot laminator which you can't really do with thermal paper because it will burn (it will become black).

I found it awesome!

Also, after I'm done with creating my paper wallets I bring it with me to use it with my phone basically as a Polaroid. I take photos of friends and give them the photo as a present. The cool thing is that the software from the one I have lets you embed QR codes, so I upload the picture I took on S3 and put the link in the qr code on the photo itself, pretty cool, but enough for the promo of this gadget, let's make paper wallets!
