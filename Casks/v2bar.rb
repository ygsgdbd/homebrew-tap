cask "v2bar" do
  version "0.1.0"
  sha256 "4dbb47e554929ca97843e81b94a5ead22b98a239bb92265240eb498737b62723"

  url "https://github.com/ygsgdbd/V2Bar/releases/download/v#{version}/V2Bar-v#{version}.dmg"
  name "V2Bar"
  homepage "https://github.com/ygsgdbd/V2Bar"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "V2Bar.app"

  caveats <<~EOS
    V2Bar is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/V2Bar",
    "~/Library/Preferences/top.ygsgdbd.V2Bar.plist",
    "~/Library/Caches/top.ygsgdbd.V2Bar"
  ]
end 