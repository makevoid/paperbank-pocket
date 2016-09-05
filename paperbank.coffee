# install coffee-script and browserify:
#
# npm i -g coffee-script browserify

# install dependencies:
#
# npm i

# run:
#
# coffee -b -c paperbank.coffee && browserify --fast paperbank.js -o bundle.js

# require libs
makeQR  = require './make-qr'
bitcore = require 'bitcore-lib'
Bip38   = require 'bip38'

# generate key, derive address
privateKey = new bitcore.PrivateKey

bip38 = new Bip38()
address         = privateKey.toAddress()
alert "SET YOUR PASSWORD IN paperbank.coffee"
privateKeyBip38 = bip38.encrypt privateKey.toWIF(), "", address.toString()

makeQR(
  "qr_private_key",
  privateKeyBip38,
)

makeQR(
  "qr_address",
  address.toString(),
)

keyElem  = document.querySelector ".private_key_label"
addrElem = document.querySelector ".address_label"

keyElem.innerHTML  = privateKeyBip38
addrElem.innerHTML = address.toString()
