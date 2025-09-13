cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "e6969c807ce0e768ce026a6628700d7587a70c86202911976edc753e9d9cb478"

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
