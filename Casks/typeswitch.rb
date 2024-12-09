cask "typeswitch" do
  version "0.3.0"
  sha256 "19fdfccb4dd56998b646faa5d9255bf861eb99e0e052de236dd4f848c29c99c3"

  url "https://github.com/ygsgdbd/TypeSwitch/releases/download/v#{version}/TypeSwitch.dmg"
  name "TypeSwitch"
  desc "Automatic input method switcher for different applications"
  homepage "https://github.com/ygsgdbd/TypeSwitch"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "TypeSwitch.app"

  caveats <<~EOS
    TypeSwitch is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/TypeSwitch",
    "~/Library/Preferences/top.ygsgdbd.TypeSwitch.plist",
    "~/Library/Caches/top.ygsgdbd.TypeSwitch"
  ]
end
