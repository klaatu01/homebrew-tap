cask "yal" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.1"
  sha256 arm:   "1352baeb29c90d47447b9de9ccbb283b09d2a61686c018281d50a8799c25bd63",
         intel: "b2f5e08835635b7550098c4d15c7f311963bfca2fc83e5aafac0c2b61e1ac6b5"

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
