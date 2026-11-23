cask "clausage" do
  version "0.2.4"
  sha256 "a33f89ba3d1ac21d1f10f20441b08c2a8ff6ab10d301f1461d8e109b1883fb19"

  url "https://github.com/ckolpeter/clausage/releases/download/v#{version}/Clausage-#{version}-mac-universal.dmg"
  name "Clausage"
  desc "Unofficial floating widget for Claude subscription usage limits"
  homepage "https://github.com/ckolpeter/clausage"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :monterey"

  app "Clausage.app"

  zap trash: [
    "~/Library/Application Support/Clausage",
    "~/Library/Logs/Clausage",
    "~/Library/Preferences/io.github.ckolpeter.clausage.plist",
  ]

  caveats <<~EOS
    Clausage is not code-signed yet. If macOS refuses to open it, right-click
    the app in /Applications and choose Open (first launch only), or run:
      xattr -dr com.apple.quarantine /Applications/Clausage.app
  EOS
end
