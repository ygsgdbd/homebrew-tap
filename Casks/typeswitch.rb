cask "typeswitch" do
    version "0.2.0"
    sha256 "316d514399769017ad71c05f36686c15dbce9f6ece29b8f8791e959bf88d0f7b"
  
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
