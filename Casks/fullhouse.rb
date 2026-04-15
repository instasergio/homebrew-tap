cask "fullhouse" do
  version "1.0.94"
  sha256 "084af4690181784214afd3aef54c0e483b784d8886dfa56e6bd2fcd476d5b3d8"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-24451277203-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
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
