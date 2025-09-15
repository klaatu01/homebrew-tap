cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "e33fe64597b8b515267b8df1644f2cc84c0185addeafb41a9e365f45ef78458e"

  url "https://github.com/klaatu01/yal/releases/download/app-v#{version}/yal_#{version}_#{arch}.dmg",
      verified: "github.com/klaatu01/yal/"
  name "YAL — Yet Another Launcher"
  desc "Tiny, no-nonsense app launcher"
  homepage "https://github.com/klaatu01/yal"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "YAL.app"

  zap trash: "~/.config/yal"
end
