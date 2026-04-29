class HrCli < Formula
  desc "CLI for HR systems — Greeting HR (app.greetinghr.com) and beyond"
  homepage "https://github.com/zigbang-smarthome/hr-cli"
  version "26.4.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-arm64.tar.gz"
      sha256 "2061d2242b65ce4e95dd614b9b3b0990878d425b4be6658edfb94a4234d10ef8"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-amd64.tar.gz"
      sha256 "99d30e8d7a621b60f4c9c30c604b76ae8274ce8e6542ac17ebd73d432db0cf23"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-arm64.tar.gz"
      sha256 "ca5065401bb1909316b9aa330e2f25ba403b4f5f2d2bdbd5f7cda80ca0e981d4"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-amd64.tar.gz"
      sha256 "a754282f1de6d1d48eeef372d1880ce5fa5829f5b2b79735316d8a45527c50e8"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    system "#{bin}/hr", "--help"
  end
end
