cask "stats" do
  version "3.0.7"
  sha256 "62e0dcd4b21446f35b3e7581b9b6720235cdac125b51fa3606500d2d630e0889"

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
