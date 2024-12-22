cask "vastwords" do
  version "0.1.0"
  sha256 "5797b7799059b5fdec29e86bfa1a497eb46a041fb263a7c2aa67b599655f26cf"

  url "https://github.com/ygsgdbd/VastWords/releases/download/v#{version}/VastWords.dmg"
  name "VastWords"
  homepage "https://github.com/ygsgdbd/VastWords"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "VastWords.app"

  caveats <<~EOS
    VastWords is currently unsigned. You'll need to:
    1. Right-click the app and select "Open"
    2. Click "Open" in the dialog that appears
    3. Go to System Settings > Privacy & Security and approve the app
  EOS

  zap trash: [
    "~/Library/Application Support/VastWords",
    "~/Library/Preferences/top.ygsgdbd.VastWords.plist",
    "~/Library/Caches/top.ygsgdbd.VastWords"
  ]
end
