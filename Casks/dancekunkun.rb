cask "dancekunkun" do
  version "0.1.0"
  sha256 "8176281860556a9f79ebdadbd2473d9ae9a042d4a62b5d7abf2c1e88e956a67e"

  url "https://github.com/ygsgdbd/DanceKunKun/releases/download/v#{version}/DanceKunKun.dmg"
  name "DanceKunKun"
  desc "A fun macOS menu bar app featuring a dancing Cai Xukun that grooves to your CPU usage"
  homepage "https://github.com/ygsgdbd/DanceKunKun"

  auto_updates false
  depends_on macos: ">= :ventura"

  app "DanceKunKun.app"

  zap trash: [
    "~/Library/Application Support/DanceKunKun",
    "~/Library/Preferences/top.ygsgdbd.DanceKunKun.plist",
    "~/Library/Caches/top.ygsgdbd.DanceKunKun"
  ]
end
