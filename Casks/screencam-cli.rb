cask "screencam-cli" do
  version "1.0.14"
  sha256 "6de4c9aea574165d5cd3771ce8ec21412fd6dc5ec62325cb668db28106488ae2"

  url "https://download.thescreen.cam/cli/releases/1.0.14/screencam-cli-1.0.14-macos-arm64.zip"
  name "ScreenCam CLI"
  desc "Native command-line client for ScreenCam recording and processing"
  homepage "https://thescreen.cam"

  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  binary "ScreenCamCLI.app/Contents/MacOS/screencam"

  caveats <<~EOS
    ScreenCam CLI requires the compatible ScreenCam app from the Mac App Store.
    Recording, processing, permissions, and Pro entitlement remain App-owned.
  EOS
end
