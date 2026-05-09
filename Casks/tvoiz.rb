cask "tvoiz" do
  version "1.0"
  sha256 "9f557cb31bb3f0764d674548c33a1aad3ac59fd579896ad56f3655d333fb76aa"

  url "https://github.com/NurikDz/Tvoiz/releases/download/Tvoiz1.1/Tvoiz.1.0.dmg"
  name "Tvoiz"
  desc "On-device text-to-speech and voice AI for Apple Silicon Macs"
  homepage "https://github.com/NurikDz/Tvoiz"

  app "Tvoiz.app"

  zap trash: [
    "~/Library/Application Support/Tvoiz",
    "~/Library/Preferences/com.nurikdz.tvoiz.plist",
  ]
end
