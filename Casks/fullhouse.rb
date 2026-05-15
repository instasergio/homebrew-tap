cask "fullhouse" do
  version "1.0.109"
  sha256 "ab688d82b36bd4c5880b8f85658c6bf13d400995369e38887c78c8f709a4e049"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-25915368248-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"
  auto_updates true

  app "FullHouse.app"

  uninstall quit: "on.cloud.dev.fullhouse"

  zap trash: [
    "~/.config/fullhouse",
    "~/Library/Caches/on.cloud.dev.fullhouse",
    "~/Library/Preferences/on.cloud.dev.fullhouse.plist",
    "~/Library/Saved Application State/on.cloud.dev.fullhouse.savedState",
  ]
end
