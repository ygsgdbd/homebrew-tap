cask "listenbar" do
  version "0.3.0"
  sha256 "2cc3328729722b24c1631c7cd9637318503524d69b3aa13e8f265c4bc629915e"

  url "https://github.com/ygsgdbd/ListenBar/releases/download/v0.3.0/ListenBar-macOS-universal.zip"
  name "ListenBar"
  desc "macOS menu bar utility for viewing local listening ports"
  homepage "https://github.com/ygsgdbd/ListenBar"

  auto_updates false
  depends_on macos: :sonoma

  app "ListenBar.app"

  uninstall quit: "top.ygsgdbd.ListenBar"

  caveats <<~EOS
    ListenBar is currently unsigned. You need to trust it manually:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app

    ListenBar 目前未签名，需要手动信任：
    1. 右键点击应用，选择“打开”
    2. 在弹出的对话框中再次点击“打开”
    3. 前往“系统设置”>“隐私与安全性”中允许该应用
  EOS

  zap trash: [
    "~/Library/Application Support/top.ygsgdbd.ListenBar",
    "~/Library/Application Support/ListenBar",
    "~/Library/Preferences/top.ygsgdbd.ListenBar.plist",
    "~/Library/Caches/top.ygsgdbd.ListenBar",
  ]
end
