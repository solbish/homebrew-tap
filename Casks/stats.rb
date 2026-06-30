cask "stats" do
  version "3.0.6"
  sha256 "b62f06aa30739a057ebf037c32223d5e1f5626bd84a8d5fdc7c3d2061c3e96bc"

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
