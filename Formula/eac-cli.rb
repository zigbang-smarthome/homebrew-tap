class EacCli < Formula
  desc "CLI for eac.zigbang.in (E-Accounting / UniDocu)"
  homepage "https://github.com/zigbang-smarthome/eac-cli"
  version "26.5.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-arm64.tar.gz"
      sha256 "fcd25990938b3b71dfb06f0115ab99d328653a732b359bbd9c03ed65a79facf1"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-x64.tar.gz"
      sha256 "830088bb3430d9a032dbdb5f7573797248f2bf1216d00426065845abb1552d04"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-arm64.tar.gz"
      sha256 "25a98681bda23ce020879e30533e70ec8b5a4818513f507beeaa6a392cb1a14d"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-x64.tar.gz"
      sha256 "b726c13d7fce8717437b26babc41b74f403650748e7a792a77ed9c7fd3acaec0"
    end
  end

  def install
    bin.install "eac"
  end

  test do
    system "#{bin}/eac", "--help"
  end
end
