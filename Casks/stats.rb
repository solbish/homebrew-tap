cask "stats" do
  version "3.0.4"
  sha256 "737fd6151c9519469d79ed4a6cda1efb00a33b76c6f7b0a032b1f3a9f6057a6f"

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
