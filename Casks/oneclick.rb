cask "oneclick" do
  version "1.0"
  sha256 "3536e5818ead1c3e71198ca6227f8c663ea5a92f358651d7f56b35a97ed47362"

  url "https://github.com/NurikDz/1clicklangs/releases/download/1clicklangs/OneClickLangs.dmg"
  name "1Click Language Store"
  desc "One-click installer for 147 programming languages — the App Store for devs"
  homepage "https://github.com/NurikDz/1clicklangs"

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
