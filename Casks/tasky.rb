cask "tasky" do
  version "1.1"
  sha256 "3e82654c0c28723bba1453d0e1d9878167a78f0e8a01705e0d7e9483362e23f4"

  url "https://github.com/NurikDz/Tasky/releases/download/Tasky/Tasky.dmg"
  name "Tasky"
  desc "Windows-style taskbar for macOS – pinned apps, live window buttons, and more"
  homepage "https://github.com/NurikDz/Tasky"

  app "Tasky.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/Tasky.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Preferences/com.tasky.app.plist",
    "~/Library/LaunchAgents/com.tasky.app.plist",
  ]
end
