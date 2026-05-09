cask "freestream" do
  version "1.0.2"
  sha256 "f3594723508b66f40c3ab64835d182ed88bffdc5b94cfeeadce88b38fd11544c"

  url "https://github.com/NurikDz/FreeStream/releases/download/FreeStreamNV/FreeStream-1.0.2.dmg"
  name "FreeStream"
  desc "High-fidelity streaming application for macOS with SwiftUI"
  homepage "https://github.com/NurikDz/FreeStream"

  app "FreeStream.app"

  zap trash: [
    "~/Library/Application Support/FreeStream",
    "~/Library/Preferences/com.nurikdz.freestream.plist",
  ]
end
