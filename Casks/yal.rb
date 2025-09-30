cask "yal" do
  arch arm: "aarch64"

  version "0.2.0"
  sha256 arm:   "c44cb6ed967a622bc79dcdb4f1cfb8b1067f925a6a22a21462f4be0deb454489"

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
