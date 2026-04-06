cask "ai-env-setup" do
  version "1.0.90"
  sha256 "b8460ffdbd9cfa94c5122f30db7b922bbdaf686cab9e4ecead2a009e8233c214"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-24027336363-1/ai-env-setup-v#{version.major_minor}-build#{version.patch}.zip",
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
