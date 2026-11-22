cask "clausage" do
  version "0.2.1"
  sha256 "4c0d9d9f12e1d46435ca946df796350251b42cdc93a14aec5a038a1783d620ef"

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
