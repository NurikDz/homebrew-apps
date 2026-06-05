cask "tasky" do
  version "1.1"
  sha256 "370d261a7e536b0514859d7b349e9449f7d763a07eb499e47276f58626037fc9"

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
