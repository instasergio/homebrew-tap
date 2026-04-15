cask "fullhouse" do
  version "1.0.95"
  sha256 "68bc8fca6aa1142d672f8940ead8cb07c9d203bca4e798e38a882704a7119015"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-24453218095-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "FullHouse.app"

  uninstall quit: "on.cloud.dev.fullhouse"

  zap trash: [
    "~/.config/fullhouse",
    "~/Library/Caches/on.cloud.dev.fullhouse",
    "~/Library/Preferences/on.cloud.dev.fullhouse.plist",
    "~/Library/Saved Application State/on.cloud.dev.fullhouse.savedState",
  ]
end
