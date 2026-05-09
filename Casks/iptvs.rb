cask "iptvs" do
  version "0.4"
  sha256 "5cb5fd5430da47f13efdd04367278e5536740809bbf3e5ef9019ee786d72439e"

  url "https://github.com/NurikDz/IptvS/releases/download/iptvS0.4/iptvS.0.4.dmg"
  name "iptvS"
  desc "Modern native IPTV experience for macOS"
  homepage "https://github.com/NurikDz/IptvS"

  app "iptvS.app"

  zap trash: [
    "~/Library/Application Support/iptvS",
    "~/Library/Preferences/com.nurikdz.iptvs.plist",
  ]
end
