cask "typeswitch" do
  version "0.3.3"
  sha256 "f3a0659f77c1c2111b4b5f87ed85f161c8c2f0323d412b705d9d64abb4b19682"

  url "https://github.com/ygsgdbd/TypeSwitch/releases/download/v#{version}/TypeSwitch.dmg"
  name "TypeSwitch"
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
