cask "pastedesk" do
  version "1.0"
  sha256 "f961a5f123372a0cf48c3f69f857ad97b701a3f13ac006273dcbd1d353efc226"

  url "https://github.com/NurikDz/PasteDesk/releases/download/PasteDesk/PasteDesk.1.0.dmg"
  name "PasteDesk"
  desc "Clipboard manager that lives on your macOS desktop wallpaper"
  homepage "https://github.com/NurikDz/PasteDesk"

  app "PasteDesk.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/PasteDesk.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/PasteDesk",
    "~/Library/Preferences/com.nurikdz.pastedesk.plist",
  ]
end
