cask "oneclick" do
  version "1.3"
  sha256 "aeeaf18f5a145483da397afc6fed688fc6bd78cf87184243bb0a4fadbbd011ab"

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
