cask "dancekunkun" do
  version "0.1.3"
  sha256 "072b198a5312c213581e098bd005d6384f410d63ac98f060ab082bea8579a3ab"

  url "https://github.com/ygsgdbd/DanceKunKun/releases/download/v#{version}/DanceKunKun.dmg"
  name "DanceKunKun"
  homepage "https://github.com/ygsgdbd/DanceKunKun"

  auto_updates false
  depends_on macos: :ventura

  app "DanceKunKun.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-dr", "com.apple.quarantine", appdir/"DanceKunKun.app"]
  end

  zap trash: [
    "~/Library/Application Support/DanceKunKun",
    "~/Library/Preferences/top.ygsgdbd.DanceKunKun.plist",
    "~/Library/Caches/top.ygsgdbd.DanceKunKun"
  ]

  caveats <<~EOS
    This Homebrew cask removed DanceKunKun's quarantine attribute after installation, so it can launch directly.
    DanceKunKun is still not signed with an Apple Developer ID or notarized. This does not mean Apple or Gatekeeper verified it.
    Manual downloads may still require right-clicking the app and selecting "Open". Only install it if you trust the project and publisher.

    此 Homebrew cask 安装后已移除 DanceKunKun 的隔离属性，因此可以直接启动。
    DanceKunKun 仍未使用 Apple Developer ID 签名或经过公证，这不代表 Apple 或 Gatekeeper 已验证该应用。
    手动下载的版本仍可能需要右键点击应用并选择“打开”。请仅在信任项目和发布者时安装。
  EOS
end
