cask "tasky" do
  version "1.1"
  sha256 "01730d3dffbc8bde1a29ae9f9522a6530595a7384cb234dac6c43f3b1fc7c352"

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
