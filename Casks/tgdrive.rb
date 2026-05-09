cask "tgdrive" do
  version "1.0.0"
  sha256 "a4bc5945d719f0dea042fd4b7c936e9529217b238043bb13e3823e9434a54065"

  url "https://github.com/NurikDz/TGDrive/releases/download/TGDRIVE/TGDrive-1.0.0.dmg"
  name "TGDrive"
  desc "Use your private Telegram channel as cloud file storage"
  homepage "https://github.com/NurikDz/TGDrive"

  app "TGDrive.app"

  zap trash: [
    "~/Library/Application Support/TGDrive",
    "~/Library/Preferences/com.nurikdz.tgdrive.plist",
  ]
end
