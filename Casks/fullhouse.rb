cask "fullhouse" do
  version "2.18.166"
  sha256 "dba29e0e5ecfb84314a3a8e2d96b2af255ff701e71874864536f7f7527eb635f"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-42107514331-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://github.com/PlodderHouse/fullhouse"
  auto_updates true
  depends_on arch: :arm64

  app "FullHouse.app"
  binary "#{appdir}/FullHouse.app/Contents/Helpers/fh", target: "fh"

  uninstall quit: "on.cloud.dev.fullhouse"

  zap trash: [
    "~/.config/fullhouse",
    "~/Library/Caches/on.cloud.dev.fullhouse",
    "~/Library/Preferences/on.cloud.dev.fullhouse.plist",
    "~/Library/Saved Application State/on.cloud.dev.fullhouse.savedState",
  ]
end
