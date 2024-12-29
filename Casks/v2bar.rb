cask "v2bar" do
  version "0.1.1"
  sha256 "f0c245424dc5ed4311954e2c2c62b02aba85d635f17cd960545b63a033ec5baa"

  url "https://github.com/ygsgdbd/V2Bar/releases/download/v#{version}/V2Bar.dmg"
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
