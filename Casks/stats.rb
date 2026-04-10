cask "stats" do
  version "2.13.0"
  sha256 "24faba02aa515104d39a0f82301b36d08783a006458e1cd736d8c4d49125521e"

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
