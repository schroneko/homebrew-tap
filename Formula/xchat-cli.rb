class XchatCli < Formula
  desc "Use XChat from the command-line through X's internal web API"
  homepage "https://github.com/schroneko/xchat-cli"
  url "https://github.com/schroneko/xchat-cli/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "bce32a3a66363131b088831ffb44c4f899e90e3d0f98a6ce3d1530df4151910c"
  license "MIT"

  depends_on :macos

  resource "xchat-cli-binary" do
    on_arm do
      url "https://github.com/schroneko/xchat-cli/releases/download/v0.1.0/xchat-cli-0.1.0-darwin-arm64.tar.gz"
      sha256 "4e683ed297f54d63483aebce7d0a0caf6777fbec67cca23ba827167987fc5ea8"
    end

    on_intel do
      url "https://github.com/schroneko/xchat-cli/releases/download/v0.1.0/xchat-cli-0.1.0-darwin-x64.tar.gz"
      sha256 "738e523d4185c9834a4c3239e50b4feba872993ee3dd3dc6f49475eaf5040e82"
    end
  end

  def install
    resource("xchat-cli-binary").stage do
      libexec.install Dir["*"]
    end
    (bin/"xchat").write <<~SH
      #!/bin/sh
      unset NODE_OPTIONS NODE_PATH
      PATH=/usr/bin:/bin:/usr/sbin:/sbin
      export PATH
      exec "#{libexec}/runtime/node" "#{libexec}/app/bin/xchat-cli.js" "$@"
    SH
  end

  test do
    assert_match "xchat: local XChat CLI", shell_output("#{bin}/xchat --help")
  end
end
