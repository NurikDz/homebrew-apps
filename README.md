# 🍺 NurikDz's Homebrew Tap

Install macOS apps directly via Homebrew — no Apple Developer ID required, no Gatekeeper warnings.

## Apps Included

| App | Description | Install |
|-----|-------------|---------|
| **ASK** | Floating AI assistant — press a hotkey, ask anything | `brew install --cask NurikDz/apps/ask` |
| **FreeStream** | Streaming aggregator & media player for macOS | `brew install --cask NurikDz/apps/freestream` |
| **H+** | Streaming app with liquid glass interface for movies and series | `brew install --cask NurikDz/apps/h-plus` |
| **TGDrive** | Telegram channel as cloud file storage | `brew install --cask NurikDz/apps/tgdrive` |
| **SentryKit** | View & manage macOS privacy permissions (TCC) | `brew install --cask NurikDz/apps/sentrykit` |
| **PasteDesk** | Clipboard manager on your desktop wallpaper | `brew install --cask NurikDz/apps/pastedesk` |
| **iptvS** | Native IPTV player for macOS | `brew install --cask NurikDz/apps/iptvs` |
| **EnvSwitch** | Switch digital contexts from the menu bar | `brew install --cask NurikDz/apps/envswitch` |
| **StreamDrop** | Download Telegram files & videos from menu bar | `brew install --cask NurikDz/apps/streamdrop` |
| **NetShield** | Network monitor with privacy shield | `brew install --cask NurikDz/apps/netshield` |
| **Tvoiz** | On-device text-to-speech & voice AI | `brew install --cask NurikDz/apps/tvoiz` |

## Quick Start

```bash
# Add this tap (one-time)
brew tap NurikDz/apps https://github.com/NurikDz/homebrew-apps

# Install any app
brew install --cask ask
brew install --cask freestream
brew install --cask h-plus
brew install --cask tgdrive
```

## Why This Works Without Apple Signing

Homebrew installs via `curl` from the command line. macOS **does not** attach the `com.apple.quarantine` attribute to CLI downloads, so Gatekeeper never triggers. Your unsigned apps install and run just like any other app.

## Updating Apps

```bash
# Update all apps from this tap
brew upgrade --cask

# Or update a specific app
brew upgrade --cask ask
```

## For Users Without the Tap

They can install in one line:
```bash
brew install --cask NurikDz/apps/ask
```

## For You (Maintainer)

### After Each Release

1. Build & upload the new DMG to GitHub Releases as usual
2. Get the new SHA256:
   ```bash
   shasum -a 256 YourApp-X.Y.Z.dmg
   ```
3. Update the cask:
   ```bash
   # Edit Casks/yourapp.rb
   # Update version and sha256
   git add Casks/yourapp.rb
   git commit -m "Update YourApp to vX.Y.Z"
   git push
   ```

### Auto-update Script

```bash
#!/bin/bash
# update.sh — example for updating a cask

APP=$1
VERSION=$2
SHA256=$3
FILE=$4
TAG=$5

sed -i '' "s/version ".*"/version "${VERSION}"/" Casks/${APP}.rb
sed -i '' "s/sha256 ".*"/sha256 "${SHA256}"/" Casks/${APP}.rb

# If URL pattern changed, update it too:
# sed -i '' "s|url ".*"|url "https://github.com/NurikDz/${REPO}/releases/download/${TAG}/${FILE}"|" Casks/${APP}.rb

git add Casks/${APP}.rb
git commit -m "Update ${APP} to v${VERSION}"
git push
```

## License

These casks reference your apps. The cask definitions themselves are MIT.
