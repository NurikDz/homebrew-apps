cask "oneclick" do
  version "1.1"
  sha256 "b193bb3fbd4cebfd4720def987de7cf84a5379c82ad2b4097d186fe0a8837482"

  url "https://github.com/NurikDz/1clicklangs/releases/download/1clicklangs/OneClickLangs.dmg"
  name "1Click Language Store"
  desc "One-click installer for 147 programming languages — the App Store for devs"
  homepage "https://1click.pages.dev"

  app "OneClickLangs.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/OneClickLangs.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Preferences/com.oneclick.langs.plist",
    "~/.oneclick",
  ]
end
