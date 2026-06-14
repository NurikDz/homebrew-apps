cask "oneclick" do
  version "1.2"
  sha256 "f7c836e3c57de5ed534d7fe37d551f74551dc226f8bcd55232d1b3105d0e8a19"

  url "https://github.com/NurikDz/1clicklangs/releases/download/1clicklangs/OneClickLangs.dmg"
  name "1Click Language Store"
  desc "Install 147 programming languages on macOS — with Bundles, CLI companion, and a live Dashboard"
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
