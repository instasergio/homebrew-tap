cask "fullhouse" do
  version "1.0.108"
  sha256 "6a2f6d79fa78009aea42fa08c5e8ad3d9c82d0c91e0d3874ced89ef6c673534f"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-25914360873-2/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
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
