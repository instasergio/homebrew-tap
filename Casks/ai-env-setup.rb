cask "ai-env-setup" do
  version "1.0.86"
  sha256 "72445263ea9367c9d9647b206a7ca3f2df3b34167cb68e4e8077174256ff4f7f"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-23846893533-1/ai-env-setup-v#{version.major_minor}-build#{version.patch}.zip",
      verified: "github.com/instasergio/homebrew-tap/"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://idp.yandex-team.ru/"

  app "ai-env-setup.app"

  uninstall quit: "on.cloud.dev.ai-env-setup"

  zap trash: [
    "~/.config/ai-env-setup",
    "~/Library/Caches/on.cloud.dev.ai-env-setup",
    "~/Library/Preferences/on.cloud.dev.ai-env-setup.plist",
    "~/Library/Saved Application State/on.cloud.dev.ai-env-setup.savedState",
  ]
end
