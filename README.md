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

All apps are currently unsigned. After installation, you need to trust them manually:
1. Right-click the app and select "Open"
2. Click "Open" in the dialog that appears
3. Go to System Settings > Privacy & Security and approve the app

所有应用目前均未签名。安装后需要手动信任：
1. 右键点击应用，选择“打开”
2. 在弹出的对话框中再次点击“打开”
3. 前往“系统设置”>“隐私与安全性”中允许该应用
