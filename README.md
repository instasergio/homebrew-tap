# homebrew-ai-env-setup

Private Homebrew tap for AI Env Setup releases.

## Install

```bash
brew tap instasergio/homebrew-ai-env-setup git@github.com:instasergio/homebrew-ai-env-setup.git
brew install --cask ai-env-setup
```

## Update

```bash
brew update
brew upgrade --cask ai-env-setup
```

## Maintainer flow

1. Build app artifact (`.zip`) and get SHA256.
2. Put zip into `Artifacts/`.
3. Update `Casks/ai-env-setup.rb` with new version/sha256.
4. Commit and push.
