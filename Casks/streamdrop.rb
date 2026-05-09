cask "streamdrop" do
  version "1.0"
  sha256 "49f8bfeacca1d0d86bf16c04663b1f8c535151f137ec4bae465102733dac0a44"

  url "https://github.com/NurikDz/streamdrop/releases/download/v1.0.0/StreamDrop-1.0.dmg"
  name "StreamDrop"
  desc "Download files from Telegram and video URLs from the menu bar"
  homepage "https://github.com/NurikDz/streamdrop"

  app "StreamDrop.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/StreamDrop.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/StreamDrop",
    "~/Library/Preferences/com.nurikdz.streamdrop.plist",
  ]
end
