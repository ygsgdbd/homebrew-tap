cask "vast-words" do
  version "0.1.0"
  sha256 "5797b7799059b5fdec29e86bfa1a497eb46a041fb263a7c2aa67b599655f26cf"

  url "https://github.com/ygsgdbd/VastWords/releases/download/v#{version}/VastWords.dmg"
  name "VastWords"
  desc "A macOS menu bar tool for learning English words"
  homepage "https://github.com/ygsgdbd/VastWords"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "VastWords.app"

  zap trash: [
    "~/Library/Application Support/VastWords",
    "~/Library/Preferences/top.ygsgdbd.VastWords.plist",
    "~/Library/Caches/top.ygsgdbd.VastWords"
  ]
end
