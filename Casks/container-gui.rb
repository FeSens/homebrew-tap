cask "container-gui" do
  version "0.2.0"
  sha256 "539dd8ce85512bc0c5a9748c41a6090836884c3e28a070ad99c1ac741ffcb7ba"

  url "https://github.com/FeSens/container-gui/releases/download/v#{version}/container-gui-#{version}-arm64-apple-macosx.zip"
  name "Container GUI"
  desc "Native macOS GUI for Apple's container CLI"
  homepage "https://github.com/FeSens/container-gui"

  depends_on formula: "container"
  depends_on macos: ">= :sequoia"
  depends_on arch: :arm64

  app "Container GUI.app"

  zap trash: [
    "~/Library/Caches/com.fesens.container-gui",
    "~/Library/Preferences/com.fesens.container-gui.plist",
  ]
end
