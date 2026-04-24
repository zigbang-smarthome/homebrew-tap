class EacCli < Formula
  desc "CLI for eac.zigbang.in (E-Accounting / UniDocu)"
  homepage "https://github.com/zigbang-smarthome/eac-cli"
  version "26.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-arm64.tar.gz"
      sha256 "e0d5630c011a81de42a01091ddb6dfa314423f34fa56675373b63763836c1c7e"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-darwin-x64.tar.gz"
      sha256 "6b59393fd309be4f2078e5e953de57372c565b12e438e89d862d1a972361cf36"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-arm64.tar.gz"
      sha256 "9e96f57664c134b272bd7fd4791b05dd5a69a476a467cfe62f4057392d2368de"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/eac-cli/releases/download/v#{version}/eac-linux-x64.tar.gz"
      sha256 "e23964578fda7b045a9091318137fc3692a607124e84293e510fb0499ad1836b"
    end
  end

  def install
    bin.install "eac"
  end

  test do
    system "#{bin}/eac", "--help"
  end
end
