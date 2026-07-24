cask "v2bar" do
  version "0.1.1"
  sha256 "f0c245424dc5ed4311954e2c2c62b02aba85d635f17cd960545b63a033ec5baa"

  url "https://github.com/ygsgdbd/V2Bar/releases/download/v#{version}/V2Bar.dmg"
  name "V2Bar"
  homepage "https://github.com/ygsgdbd/V2Bar"

  auto_updates false
  depends_on macos: :ventura

  app "V2Bar.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", appdir/"V2Bar.app"]
  end

  zap trash: [
    "~/Library/Application Support/V2Bar",
    "~/Library/Preferences/top.ygsgdbd.V2Bar.plist",
    "~/Library/Caches/top.ygsgdbd.V2Bar"
  ]

  caveats <<~EOS
    This Homebrew cask removed V2Bar's quarantine attribute after installation, so it can launch directly.
    V2Bar is still not signed with an Apple Developer ID or notarized. This does not mean Apple or Gatekeeper verified it.
    Manual downloads may still require right-clicking the app and selecting "Open". Only install it if you trust the project and publisher.

    此 Homebrew cask 安装后已移除 V2Bar 的隔离属性，因此可以直接启动。
    V2Bar 仍未使用 Apple Developer ID 签名或经过公证，这不代表 Apple 或 Gatekeeper 已验证该应用。
    手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任项目和发布者时安装。
  EOS
end 
