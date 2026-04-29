class HrCli < Formula
  desc "CLI for HR systems — Greeting HR (app.greetinghr.com) and beyond"
  homepage "https://github.com/zigbang-smarthome/hr-cli"
  version "26.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-arm64.tar.gz"
      sha256 "60df6ba15d1f798297b18a5f1d337d65c5e89875666a752f7d86664aa9a6b286"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-darwin-amd64.tar.gz"
      sha256 "3cb2d1683a1c0a5d83b35caf26017756f795469f772b2d64fc400f0c1b413db3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-arm64.tar.gz"
      sha256 "0a25f8568bc0686ea0378244df1b31925e0a19647dd2e81c53fb0ad0a0287698"
    end
    on_intel do
      url "https://github.com/zigbang-smarthome/hr-cli/releases/download/v#{version}/hr-linux-amd64.tar.gz"
      sha256 "df5e05f2bce0bbf01712e812f599beaae30a971acb396564a1d46393fd6a76cf"
    end
  end

  def install
    bin.install "hr"
  end

  test do
    system "#{bin}/hr", "--help"
  end
end
