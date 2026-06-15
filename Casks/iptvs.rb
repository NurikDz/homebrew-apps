cask "iptvs" do
  version "0.4"
  sha256 "123f2da59227c19ea23f496e4c56f42771ff08b333744b9d47c9a9976901f0bd"

  url "https://github.com/NurikDz/IptvS/releases/download/iptvS0.4/iptvS.0.4.dmg"
  name "iptvS"
  desc "Modern native IPTV experience for macOS"
  homepage "https://github.com/NurikDz/IptvS"

  app "iptvS.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/iptvS.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/iptvS",
    "~/Library/Preferences/com.nurikdz.iptvs.plist",
  ]
end
