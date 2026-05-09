cask "netshield" do
  version "1.0"
  sha256 "b259e52e7a2fbbd1bd649748a89b7212d289510c66d2aa271e6bf13b4eee3d73"

  url "https://github.com/NurikDz/-NetShield-macOS-Menu-Bar-Network-Monitor/releases/download/NetShield/NetShield-1.0.dmg"
  name "NetShield"
  desc "Menu bar network monitor with automatic privacy shield"
  homepage "https://github.com/NurikDz/-NetShield-macOS-Menu-Bar-Network-Monitor"

  app "NetShield.app"

  zap trash: [
    "~/Library/Application Support/NetShield",
    "~/Library/Preferences/com.nurikdz.netshield.plist",
  ]
end
