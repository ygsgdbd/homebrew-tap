cask "dancekunkun" do
  version "0.1.0"
  sha256 "a16dff7e3f247e48b61dedbdb948a895831fa9303b26c91cb5c16c722ec4a4b9"

  url "https://github.com/ygsgdbd/DanceKunKun/releases/download/v#{version}/DanceKunKun.dmg"
  name "DanceKunKun"
  desc "把会跳舞的坤坤放到你的 macOS 菜单栏"
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