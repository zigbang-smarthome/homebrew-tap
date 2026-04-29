class ZbsCli < Formula
  desc "CLI for zbs.zigbang.in (직방 본사 B2B 포털)"
  homepage "https://github.com/zigbang-smarthome/zbs-cli"
  version "26.4.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-darwin-arm64.tar.gz"
      sha256 "ef88c3dae6fa4bcd91b59742607570836eadde7ce79739da0d52f1f148d7068e"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-darwin-x64.tar.gz"
      sha256 "db2cbe9de66c7486eba1a1d794d45bc2e37cbda4d520b26682f37bdd05a2a89a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-linux-arm64.tar.gz"
      sha256 "66b6793ad2e9f27e7c7b7a17115887151d96696520c45a3da09123e22420d348"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-linux-x64.tar.gz"
      sha256 "6748324297b8db4c508be6bc1978d40499e6d3ca09584597dbb3798f524a15c0"
    end
  end

  def install
    bin.install "zbs"
  end

  test do
    system "#{bin}/zbs", "--help"
  end
end
