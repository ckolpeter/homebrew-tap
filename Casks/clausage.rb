cask "clausage" do
  version "0.2.3"
  sha256 "2b61f39087f6d6ef6e3a6b56c26e47ebc1bc3a6c72b3c66b871064af5a7de3eb"

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
