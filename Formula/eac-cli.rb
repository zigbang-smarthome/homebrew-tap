class EacCli < Formula
  desc "CLI for eac.zigbang.in (E-Accounting / UniDocu)"
  homepage "https://github.com/zigbang-smarthome/eac-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-arm64.tar.gz"
      sha256 "d6e52e61724170b796318ab59c7812807a799b4b0451ac5f48e53ddcb35b27d3"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-x64.tar.gz"
      sha256 "72fb8c09fcb6ab977904224358e49c85bd2ce4aae40ea070173770521c0422fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-arm64.tar.gz"
      sha256 "340a13967e671989c82f1ed2dc3bc97d3f01ae60e996043bded37fe58ec0448c"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-x64.tar.gz"
      sha256 "c0a949dc622f80ea50e0b088d31b3f715fea8c8a0618daa64c89507a803c3639"
    end
  end

  def install
    bin.install "eac"
  end

  test do
    system "#{bin}/eac", "--help"
  end
end
