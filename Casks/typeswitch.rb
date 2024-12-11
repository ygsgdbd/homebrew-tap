cask "typeswitch" do
  version "0.3.2"
  sha256 "497349c5ecba03f6c06e598a09fd82ce563343987d04e6ccf2acf14e049b36a3"

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
