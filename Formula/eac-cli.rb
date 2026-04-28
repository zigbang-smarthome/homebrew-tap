class EacCli < Formula
  desc "CLI for eac.zigbang.in (E-Accounting / UniDocu)"
  homepage "https://github.com/zigbang-smarthome/eac-cli"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-arm64.tar.gz"
      sha256 "55553aa47bff2068872cd9fb0cfb56883503473d8475c2d170e2b6b8696729c2"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-x64.tar.gz"
      sha256 "98ffdd31b961f1e56a13461b6f517d35b44fd3914df3d6cb925ba06f6b345b52"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-arm64.tar.gz"
      sha256 "23d0fc058e5b57a53f114c0f01430fa58fb2ac1ad89eb1aa9c0ed20372df5843"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-x64.tar.gz"
      sha256 "f72675fcdaae26530ba7e390074de4a39e4271e99a868474845761313c613b45"
    end
  end

  def install
    bin.install "eac"
  end

  test do
    system "#{bin}/eac", "--help"
  end
end
