# Homebrew Tap

This is a custom Homebrew tap containing various macOS applications.

## Installation

```bash
# Add this tap
brew tap ygsgdbd/tap

# Install apps
brew install --cask typeswitch
brew install --cask listenbar
brew install --cask vastwords
brew install --cask dancekunkun
brew install --cask v2bar
```

## Available Casks

- [`typeswitch`](https://github.com/ygsgdbd/TypeSwitch): Automatic input method switcher for macOS
  - Languages: `en`, `zh`, `zh-TW` (English, 简体中文, 繁體中文)
- [`listenbar`](https://github.com/ygsgdbd/ListenBar): macOS menu bar utility for viewing local listening ports
- [`vastwords`](https://github.com/ygsgdbd/VastWords): A vocabulary learning tool for macOS
- [`dancekunkun`](https://github.com/ygsgdbd/DanceKunKun): A menu bar app featuring a dancing figure that grooves to CPU usage
- [`v2bar`](https://github.com/ygsgdbd/V2Bar): A menu bar app for managing V2Ray

## Note

All apps are currently unsigned and not notarized. Their Homebrew casks remove the app's quarantine attribute after installation so the app can launch directly. This does not mean Apple or Gatekeeper verified the app. Manual downloads may still require right-clicking the app and selecting "Open". Only install an app if you trust its project and publisher.

所有应用目前均未签名或公证。对应的 Homebrew cask 会在安装后移除应用的隔离属性，使其可以直接启动。这不代表 Apple 或 Gatekeeper 已验证应用。手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任对应项目和发布者时安装。
