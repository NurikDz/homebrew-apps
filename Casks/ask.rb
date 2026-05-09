cask "ask" do
  version "1.0"
  sha256 "942bf1ad58b2b99e4f042f1e344e322f6416675aa33ddb5bd0a595f65297afe1"

  url "https://github.com/NurikDz/ASK/releases/download/Ask/Ask.1.0.dmg"
  name "ASK"
  desc "Floating AI assistant for macOS — press a hotkey, ask anything"
  homepage "https://github.com/NurikDz/ASK"

  app "ASK.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/ASK.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/ASK",
    "~/Library/Preferences/com.nurikdz.ask.plist",
  ]
end
