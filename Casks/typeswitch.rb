cask "typeswitch" do
  version "0.9.0"
  sha256 "a44df31d8dd3188daf57cc82205bc7bc2756b68eb39a4e384906e5019d86ed18"

  language "zh", default: true do
    "zh"
  end

  language "zh-TW" do
    "zh-TW"
  end

  language "en" do
    "en"
  end

  url "https://github.com/ygsgdbd/TypeSwitch/releases/download/v0.9.0/TypeSwitch-macOS-universal.zip"
  name "TypeSwitch"
  desc "Automatic input method switcher for macOS"
  homepage "https://github.com/ygsgdbd/TypeSwitch"

  auto_updates false
  depends_on macos: :sonoma

  app "TypeSwitch.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", appdir/"TypeSwitch.app"]
  end

  uninstall launchctl: "top.ygsgdbd.TypeSwitch",
            quit:      "top.ygsgdbd.TypeSwitch"

  zap trash: [
    "~/Library/Application Support/top.ygsgdbd.TypeSwitch",
    "~/Library/Application Support/TypeSwitch",
    "~/Library/LaunchAgents/top.ygsgdbd.TypeSwitch.plist",
    "~/Library/Preferences/top.ygsgdbd.TypeSwitch.plist",
    "~/Library/Caches/top.ygsgdbd.TypeSwitch",
  ]

  caveats <<~EOS
    This Homebrew cask removed TypeSwitch's quarantine attribute after installation, so it can launch directly.
    TypeSwitch is still not signed with an Apple Developer ID or notarized. This does not mean Apple or Gatekeeper verified it.
    Manual downloads may still require right-clicking the app and selecting "Open". Only install it if you trust the project and publisher.

    此 Homebrew cask 安装后已移除 TypeSwitch 的隔离属性，因此可以直接启动。
    TypeSwitch 仍未使用 Apple Developer ID 签名或经过公证，这不代表 Apple 或 Gatekeeper 已验证该应用。
    手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任项目和发布者时安装。
  EOS
end
