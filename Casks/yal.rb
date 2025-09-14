cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "b5d2e678af49bf82066151dc2add6301c79a9bba6d393191bb0a049e9894e501"

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
