class ZbsCli < Formula
  desc "CLI for zbs.zigbang.in (직방 본사 B2B 포털)"
  homepage "https://github.com/zigbang-smarthome/zbs-cli"
  version "26.5.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-darwin-arm64.tar.gz"
      sha256 "771e96eb705b8f17208d7d9e4d01226bb6860e99cf0b40b57ce3e4c0b5d90ee5"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-darwin-x64.tar.gz"
      sha256 "1b8722d11142c5ba8e6f3a5b2354a83b4b467af13bbae7680475903650ae1ed5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-linux-arm64.tar.gz"
      sha256 "5acaeed24c0a68028ef1edc317a3ea72ee07ba87f83647577bd36c2a197ec549"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/zbs-cli/releases/download/v#{version}/zbs-linux-x64.tar.gz"
      sha256 "b128246679b133d2b48da8f75e5d4b8ef77398bc0baa758415b36459ad26e3c5"
    end
  end

  def install
    bin.install "zbs"
  end

  test do
    system "#{bin}/zbs", "--help"
  end
end
