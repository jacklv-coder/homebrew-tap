# Homebrew tap for ipcheck

[ipcheck](https://github.com/jacklv-coder/ipcheck) diagnoses the real network
paths used by Codex and Claude Code, including configured proxy and gateway
routes.

Install it in one command:

```bash
brew install jacklv-coder/tap/ipcheck
```

Or tap first if you prefer the short formula name:

```bash
brew tap jacklv-coder/tap
brew trust --formula jacklv-coder/tap/ipcheck
brew install ipcheck
```

Homebrew 6 requires explicit trust for non-official taps. The one-command
fully qualified install trusts only the `ipcheck` formula automatically; it
does not trust every formula in the tap.

Upgrade later with:

```bash
brew update
brew upgrade ipcheck
```
