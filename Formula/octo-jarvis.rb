class OctoJarvis < Formula
  desc "Terminal AI assistant powered by Gemini, with optional spoken replies"
  homepage "https://github.com/TugraYaka/octo-jarvis"
  url "https://github.com/TugraYaka/octo-jarvis/archive/refs/tags/v0.3.0.tar.gz"
  sha256 "32d587714c176d55f346aca15eb492a94ecbda0632f373a9ae44c5fd61e1c9ef"
  license "MIT"
  head "https://github.com/TugraYaka/octo-jarvis.git", branch: "main"

  depends_on "python@3.13"

  def install
    libexec.install Dir["*"]
    python = Formula["python@3.13"].opt_bin/"python3.13"
    (bin/"jarvis").write <<~SH
      #!/bin/sh
      export JARVIS_INSTALL_METHOD=brew
      exec "#{python}" "#{libexec}/jarvis.py" "$@"
    SH
  end

  def caveats
    <<~EOS
      The first run installs JARVIS' Python packages into
        ~/Library/Application Support/JARVIS
      To remove JARVIS completely (including the TTS server and all its data) run:
        jarvis uninstall
      Running only `brew uninstall octo-jarvis` leaves that data folder behind.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jarvis --version")
  end
end
