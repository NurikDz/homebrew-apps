cask "envswitch" do
  version "0.1.0"
  sha256 "a822f9f33d7c19c98f590c3d9c5361d9d36a06a476d4e547fbf3bd5c40bca2d8"

  url "https://github.com/NurikDz/EnvSwitch/releases/download/v0.1.0/EnvSwitch.dmg"
  name "EnvSwitch"
  desc "Minimalist macOS menu bar app for switching digital contexts"
  homepage "https://github.com/NurikDz/EnvSwitch"

  app "EnvSwitch.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/EnvSwitch.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/EnvSwitch",
    "~/Library/Preferences/com.nurikdz.envswitch.plist",
  ]
end
