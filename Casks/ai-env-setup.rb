cask "ai-env-setup" do
  version "1.0,1"
  sha256 "fd9f18b825017ec82f770df720e7a39d3f45ffb9d60b91c926be21b3f45f382a"

  url "https://github.com/instasergio/homebrew-ai-env-setup/releases/download/v#{version.csv.first}-build#{version.csv.second}/ai-env-setup-v#{version.csv.first}-build#{version.csv.second}.zip"
  name "AI Env Setup"
  desc "Manage MCP, skills, commands, and model providers across AI clients"
  homepage "https://github.com/instasergio/homebrew-ai-env-setup"

  app "ai-env-setup.app"
end
