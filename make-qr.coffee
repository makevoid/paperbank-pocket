# build this file:
#
# coffee -b -c make-qr.coffee

# require libs
QRCode  = require 'davidshimjs-qrcodejs'

# helper function to quickly create a QR png image
makeQR = (className, content, dimension) ->
  element = document.querySelector ".#{className}"
  element.innerHTML = ""
  dimension = 200
  new QRCode element,
    text:          content,
    width:         dimension,
    height:        dimension,
    correctLevel:  QRCode.CorrectLevel.H

# export the function
module.exports = makeQR
