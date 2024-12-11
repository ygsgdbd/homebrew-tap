cask "dancekunkun" do
  version "0.1.1"
  sha256 "fde035a49e863291e43fdf364e9928f2344f022ea9338a927e9b23f600409996"

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
