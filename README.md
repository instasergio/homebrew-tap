# homebrew-ai-env-setup

Public Homebrew tap for AI Env Setup releases.

## Install

```bash
brew tap instasergio/homebrew-ai-env-setup
brew install --cask instasergio/homebrew-ai-env-setup/ai-env-setup
```

## Update

```bash
brew update
brew upgrade --cask instasergio/homebrew-ai-env-setup/ai-env-setup
```

## Maintainer flow

1. Build app artifact (`.zip`) and get SHA256.
2. Create/update GitHub release tag `v<version>-build<build>` in this tap repo.
3. Upload zip as release asset `ai-env-setup-v<version>-build<build>.zip`.
4. Update `Casks/ai-env-setup.rb` version + sha256 if needed.
5. Commit and push.
