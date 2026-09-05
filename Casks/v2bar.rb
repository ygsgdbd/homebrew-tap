cask "v2bar" do
  version "0.2.0"
  sha256 "aec13a34451e9cd782396c6517628edd6523145257073bd78577fc5a02d866b3"

  url "https://github.com/ygsgdbd/V2Bar/releases/download/v0.2.0/V2Bar-macOS-universal.zip"
  name "V2Bar"
  homepage "https://github.com/ygsgdbd/V2Bar"

  auto_updates false
  depends_on macos: :sonoma

  app "V2Bar.app"

  postflight_steps do
    run "/usr/bin/xattr",
        args: ["-dr", "com.apple.quarantine", "{{appdir}}/V2Bar.app"]
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
