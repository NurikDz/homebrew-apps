cask "sentrykit" do
  version "1.0.0"
  sha256 "8f52e57fd921fba511a786338057084c24c9207fe157f1503c3210f417f89479"

  url "https://github.com/NurikDz/SentryKit/releases/download/SentryKit1.0.0/SentryKit.1.0.0.dmg"
  name "SentryKit"
  desc "View and manage macOS privacy permissions (TCC)"
  homepage "https://github.com/NurikDz/SentryKit"

  app "SentryKit.app"

  postflight do
    system_command "xattr",
                   args: ["-dr", "com.apple.quarantine", "#{appdir}/SentryKit.app"],
                   print_stderr: false
  end

  zap trash: [
    "~/Library/Application Support/SentryKit",
    "~/Library/Preferences/com.nurikdz.sentrykit.plist",
  ]
end
