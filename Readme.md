# Paperbank Pocket 🎫
> Generate paper wallets and keychains using Pocket Photo printers

![Status](https://img.shields.io/badge/status-archived-orange)
![License](https://img.shields.io/badge/license-MIT-blue)

## ⚠️ Project Status

**This project is no longer maintained** (built several years ago as a beta). While it still functions, modern alternatives using AI-assisted development with React Native, Swift, or Kotlin with standard Web3 libraries are recommended.

For serious cold storage needs, hardware wallets are the way to go. However, paper wallets remain useful for:
- Small crypto gifts at events
- Loyalty token distribution
- Educational purposes
- Quick offline backups

## 📖 Overview

Paperbank Pocket leverages affordable Pocket Photo printers to create physical Bitcoin paper wallets and keychains. The project combines web technologies with cryptocurrency standards to generate secure, printable wallets directly from your browser.

### 🎥 Demo Video
[![Paperbank Pocket Demo](http://mkvphoto.s3.amazonaws.com/paperbank_pocket/paperbank_pocket_play_small.png)](https://vimeo.com/156742301)

## 🛠️ Tech Stack

- **Crypto Libraries**: bitcore-lib, BIP38 encryption
- **Frontend**: HTML, CSS, QR code generation
- **Build Tools**: Browserify, CoffeeScript
- **Development**: Node.js, UglifyJS

## 🚀 Quick Start

### Installation

```bash
# Install global dependencies
npm i -g uglifyjs

# Install project dependencies
npm install
```

### Development

```bash
# Rebuild the bundle
./build.sh

# Start local server
python -m SimpleHTTPServer 3000
# or
python3 -m http.server 3000
```

Visit `http://localhost:3000` in your browser.

## 📱 How to Use

1. **Generate**: Load the app - a key is automatically generated
2. **Screenshot**: Capture the screen with your wallet
3. **Print**: 
   - Send screenshot to your Pocket Photo printer app
   - Select "Fit Page" (not "Fill")
   - Print your paper wallet!

## 🔒 Security Considerations

- **Self-host** for maximum security
- **Regenerate bundle** using browserify before production use
- **Use offline** - disconnect from internet when generating wallets
- **BIP38 encryption** available for password-protected keys
- Consider this for **small amounts only** - not for significant holdings

## 🏗️ Deployment Options

- **Static hosting**: Upload to any web server
- **Local file**: Open `index.html` directly
- **Mobile app**: Bundle with Cordova/PhoneGap
- **Offline use**: Download and run locally

## 🔄 Modern Alternatives

If building today, consider:

```javascript
// React Native with Ethers.js (requires shims)
npm install @ethersproject/shims ethers

// Swift with Web3Swift
pod 'web3swift'

// Kotlin with Web3j
implementation 'org.web3j:core:4.8.7'
```

## 🤝 Contributing

While this project is archived, feel free to fork and adapt for your needs. The codebase serves as a reference implementation for paper wallet generation.

## 📜 License

MIT License - Use freely with attribution

## 🙏 Acknowledgments

- Original [Paperbank](http://paperbank.it) project
- Built by [@makevoid](https://twitter.com/makevoid)

---

### 💡 Fun Ideas for Extension

- NFC chip integration for hybrid paper-digital wallets
- Multi-currency support (ETH, other ERC-20 tokens)
- Batch generation for events
- Custom branding/themes
- Mobile-first responsive design

---

*Remember: Paper wallets are great for gifts and demos, but for serious crypto storage, use hardware wallets!* 🔐
