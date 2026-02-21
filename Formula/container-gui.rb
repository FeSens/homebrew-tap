class ContainerGui < Formula
  desc "Native macOS GUI for Apple's container CLI"
  homepage "https://github.com/FeSens/container-gui"
  url "https://github.com/FeSens/container-gui/releases/download/v0.1.0/container-gui-0.1.0-arm64-apple-macosx.tar.gz"
  sha256 "244606e96988d4f6c628ef168f299aaecb3a5330ca65a2dc8eecc29365d2f40b"
  version "0.1.0"
  license "MIT"

  depends_on macos: :sequoia
  depends_on arch: :arm64

  def install
    bin.install "ContainerGUI" => "container-gui"
  end

  test do
    assert_predicate bin/"container-gui", :executable?
  end
end
