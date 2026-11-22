# ckolpeter/homebrew-tap

Homebrew tap for [Clausage](https://github.com/ckolpeter/clausage), an unofficial floating desktop widget that shows your Claude subscription usage limits.

```bash
brew install --cask ckolpeter/tap/clausage
```

Clausage is not code-signed yet. If macOS refuses to open it, right-click the app in `/Applications` and choose **Open** (first launch only), or run:

```bash
xattr -dr com.apple.quarantine /Applications/Clausage.app
```

Unofficial; not affiliated with or endorsed by Anthropic.
