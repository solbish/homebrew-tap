cask "stats" do
  version "3.0.2"
  sha256 "77295868ea167a9970dfe3c71f52d711398b151b595308de1e06bbd23148f764"

  url "https://github.com/solbish/stats/releases/download/v#{version}/Stats.dmg"
  name "Stats"
  desc "macOS system monitor with Claude API usage tracking"
  homepage "https://github.com/solbish/stats"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "Stats.app"

  caveats <<~EOS
    Stats is not signed. To open, right-click the app and select "Open",
    or run: xattr -cr /Applications/Stats.app
  EOS

  zap trash: [
    "~/Library/Application Support/Stats",
    "~/Library/Caches/eu.exelban.Stats",
    "~/Library/Preferences/eu.exelban.Stats.plist",
  ]
end
