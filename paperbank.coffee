# install coffee-script and browserify
#
# npm i -g coffee-script browserify

# run:
#
# coffee -b -c paperbank.coffee && browserify --fast paperbank.js -o bundle.js

# require libs
makeQR  = require './make-qr'
bitcore = require 'bitcore-lib'

# generate key, derive address
privateKey = new bitcore.PrivateKey
adress     = privateKey.toAddress()

makeQR(
  "qr_private_key",
  privateKey.toWIF(),
)

makeQR(
  "qr_address",
  adress,
)
