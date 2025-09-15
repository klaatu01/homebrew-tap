cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "84c357385574fb9e0d31b5406395542203f756a03ab6cc4a2f849948d72df7fd"

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
