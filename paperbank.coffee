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
bip38      = new Bip38()


main = ->
  privateKey = new bitcore.PrivateKey
  address    = privateKey.toAddress()
  promptForPassword( (password) ->
    generateQRs address, privateKey, password
    bindRegenerate address, privateKey, password
  )

promptForPassword = (callback) ->
  password  = prompt "Choose a BIP38 Password to encrypt your paper wallet"
  password2 = prompt "Confirm the BIP38 Password you chose"

  if password && password == password2 && password != ""
    callback password
  else
    alert "Password mismatch! Close this alert and try entering the password again."
    promptForPassword callback

generateQRs = (address, privateKey, password) ->
  privateKeyBip38 = bip38.encrypt privateKey.toWIF(), password, address.toString()

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

regenerate = (address, privateKey, password) ->
  ->
    generateQRs address, privateKey, password

bindRegenerate = (address, privateKey, password) ->
  elem = document.querySelector "a.regenerate"
  elem.addEventListener "click", regenerate(address, privateKey, password)


# ---


main()
