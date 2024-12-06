cask "typeswitch" do
    version "0.1.0"
    sha256 "5b138f7d30b095dbd389a9b24e79bba4d4be584898cc45c9ca140ff4fc30462f"
  
    url "https://github.com/ygsgdbd/TypeSwitch/releases/download/v#{version}/TypeSwitch.dmg"
    name "TypeSwitch"
    desc "Automatic input method switcher for different applications"
    homepage "https://github.com/ygsgdbd/TypeSwitch"
  
    auto_updates false
    depends_on macos: ">= :ventura"
  
    app "TypeSwitch.app"
  
    caveats do
      unsigned_app
      <<~EOS
        TypeSwitch is currently unsigned. You'll need to:
        1. Right-click the app and select "Open"
        2. Click "Open" in the dialog that appears
        3. Go to System Settings > Privacy & Security and approve the app
      EOS
    end
  
    zap trash: [
      "~/Library/Application Support/TypeSwitch",
      "~/Library/Preferences/top.ygsgdbd.TypeSwitch.plist",
      "~/Library/Caches/top.ygsgdbd.TypeSwitch"
    ]
  end