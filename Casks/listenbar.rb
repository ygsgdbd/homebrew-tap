cask "listenbar" do
  version "0.4.0"
  sha256 "f2f55b605a531908256ee5f54adcc798e95538e9d2fa5dc84eba8cb908ca5975"

  url "https://github.com/ygsgdbd/ListenBar/releases/download/v0.4.0/ListenBar-macOS-universal.zip"
  name "ListenBar"
  desc "macOS menu bar utility for viewing local listening ports"
  homepage "https://github.com/ygsgdbd/ListenBar"

  auto_updates false
  depends_on macos: :sonoma

  app "ListenBar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", appdir/"ListenBar.app"]
  end

  uninstall quit: "top.ygsgdbd.ListenBar"

  zap trash: [
    "~/Library/Application Support/top.ygsgdbd.ListenBar",
    "~/Library/Application Support/ListenBar",
    "~/Library/Preferences/top.ygsgdbd.ListenBar.plist",
    "~/Library/Caches/top.ygsgdbd.ListenBar",
  ]

  caveats <<~EOS
    This Homebrew cask removed ListenBar's quarantine attribute after installation, so it can launch directly.
    ListenBar is still not signed with an Apple Developer ID or notarized. This does not mean Apple or Gatekeeper verified it.
    Manual downloads may still require right-clicking the app and selecting "Open". Only install it if you trust the project and publisher.

    此 Homebrew cask 安装后已移除 ListenBar 的隔离属性，因此可以直接启动。
    ListenBar 仍未使用 Apple Developer ID 签名或经过公证，这不代表 Apple 或 Gatekeeper 已验证该应用。
    手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任项目和发布者时安装。
  EOS
end
