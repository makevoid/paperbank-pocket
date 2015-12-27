# install coffee-script
#
# npm i -g coffee-script

# run:
#
# coffee -c paperbank.coffee && node paperbank.js
#
# coffee -c paperbank.coffee && browserify --fast paperbank.js -o bundle.js

# require 'davidshimjs-qrcodejs'
# QRCode = require 'QRCode'
QRCode = require 'davidshimjs-qrcodejs'
bitcore = require 'bitcore-lib'


element = document.querySelector ".qr_address"

qrcode = new QRCode element,
	text: "http://jindo.dev.naver.com/collie",
	width:  128,
	height: 128,
	# correctLevel : QRCode.CorrectLevel.H
