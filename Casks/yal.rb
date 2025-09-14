cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "ea669287961b6841ef909f7ba7d1deeb973936cd46e1bd83d63efeacf5c9aac8"

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
