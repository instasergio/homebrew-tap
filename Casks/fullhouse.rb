cask "fullhouse" do
  version "2.13.149"
  sha256 "3bbea524a4ef3050ce8b2be8e5fa9e55f6efcadac3043ec4e79b52cf77677d52"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-35767719916-1/fullhouse-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
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
