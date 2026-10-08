# homebrew-octo-jarvis

Homebrew tap for [JARVIS](https://github.com/TugraYaka/octo-jarvis), a terminal AI assistant powered by Gemini with optional spoken replies.

## Install

```bash
brew tap TugraYaka/octo-jarvis
brew trust TugraYaka/octo-jarvis
brew install octo-jarvis
```

Recent Homebrew versions refuse formulas from third-party taps until you trust them, which is what `brew trust` does.

Then run `jarvis`. The first launch sets up its own Python environment and asks for your Gemini API key.

## Update

```bash
brew upgrade octo-jarvis
```

## Uninstall

```bash
jarvis uninstall
```

This removes JARVIS' data (environment, TTS server, models, key, memory) and the Homebrew package. Running only `brew uninstall octo-jarvis` leaves the data folder behind. To also remove the tap:

```bash
brew untap TugraYaka/octo-jarvis
```

## More

Documentation, other install methods and the source code are in the [main repository](https://github.com/TugraYaka/octo-jarvis). Released under the MIT license.
