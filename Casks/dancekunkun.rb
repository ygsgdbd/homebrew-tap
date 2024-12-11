cask "dancekunkun" do
  version "0.1.2"
  sha256 "c13064f0ca18945a65c65926b0e93a3b1241233be09da0f90c7a3d79af999366"

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
