cask "vastwords" do
  version "0.1.0"
  sha256 "e537d9b713019366b8a10f4afd37a4d66739c434a6e419f74f41802ff1e15a41"

  url "https://github.com/ygsgdbd/VastWords/releases/download/v#{version}/VastWords.dmg"
  name "VastWords"
  homepage "https://github.com/ygsgdbd/VastWords"

  auto_updates false
  depends_on macos: :ventura

  app "VastWords.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", appdir/"VastWords.app"]
  end

  zap trash: [
    "~/Library/Application Support/VastWords",
    "~/Library/Preferences/top.ygsgdbd.VastWords.plist",
    "~/Library/Caches/top.ygsgdbd.VastWords"
  ]

  caveats <<~EOS
    This Homebrew cask removed VastWords' quarantine attribute after installation, so it can launch directly.
    VastWords is still not signed with an Apple Developer ID or notarized. This does not mean Apple or Gatekeeper verified it.
    Manual downloads may still require right-clicking the app and selecting "Open". Only install it if you trust the project and publisher.

    此 Homebrew cask 安装后已移除 VastWords 的隔离属性，因此可以直接启动。
    VastWords 仍未使用 Apple Developer ID 签名或经过公证，这不代表 Apple 或 Gatekeeper 已验证该应用。
    手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任项目和发布者时安装。
  EOS
end
