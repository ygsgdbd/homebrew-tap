cask "dancekunkun" do
  version "0.1.3"
  sha256 "072b198a5312c213581e098bd005d6384f410d63ac98f060ab082bea8579a3ab"

  url "https://github.com/ygsgdbd/DanceKunKun/releases/download/v#{version}/DanceKunKun.dmg"
  name "DanceKunKun"
  homepage "https://github.com/ygsgdbd/DanceKunKun"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "DanceKunKun.app"

  caveats <<~EOS
    DanceKunKun is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/DanceKunKun",
    "~/Library/Preferences/top.ygsgdbd.DanceKunKun.plist",
    "~/Library/Caches/top.ygsgdbd.DanceKunKun"
  ]
end
