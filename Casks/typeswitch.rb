cask "typeswitch" do
  version "0.6.0"
  sha256 "23bd77e0e9db643edda9484faace2822a08749d5436bd05366349a8fe699fc49"

  language "zh", default: true do
    "zh"
  end

  language "zh-TW" do
    "zh-TW"
  end

  language "en" do
    "en"
  end

  url "https://github.com/ygsgdbd/TypeSwitch/releases/download/v0.6.0/TypeSwitch-macOS-universal.zip"
  name "TypeSwitch"
  desc "Automatic input method switcher for macOS"
  homepage "https://github.com/ygsgdbd/TypeSwitch"

  auto_updates false
  depends_on macos: :sonoma

  app "TypeSwitch.app"

  uninstall launchctl: "top.ygsgdbd.TypeSwitch",
            quit:      "top.ygsgdbd.TypeSwitch"

  caveats <<~EOS
    TypeSwitch is currently unsigned. You need to trust it manually:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app

    TypeSwitch 目前未签名，需要手动信任：
    1. 右键点击应用，选择“打开”
    2. 在弹出的对话框中再次点击“打开”
    3. 前往“系统设置”>“隐私与安全性”中允许该应用
  EOS

  zap trash: [
    "~/Library/Application Support/top.ygsgdbd.TypeSwitch",
    "~/Library/Application Support/TypeSwitch",
    "~/Library/LaunchAgents/top.ygsgdbd.TypeSwitch.plist",
    "~/Library/Preferences/top.ygsgdbd.TypeSwitch.plist",
    "~/Library/Caches/top.ygsgdbd.TypeSwitch",
  ]
end
