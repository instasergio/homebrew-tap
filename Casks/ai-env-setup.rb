cask "ai-env-setup" do
  version "1.0.87"
  sha256 "25a0b967eacc15e088b81f70f35fb6bd30763473bdec9ff01057628600cec257"

  url "https://github.com/instasergio/homebrew-tap/releases/download/build-#{version}-23901782763-1/ai-env-setup-v#{version.major_minor}-build#{version.patch}.zip",
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
