cask "fullhouse" do
  version "2.15.152"
  sha256 "8b6cffe439c5dceacdd970bda7e91efc9843ff013c2ab849d3229afe7a630c51"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-39449234371-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip"
  name "FullHouse"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"
  auto_updates true

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
