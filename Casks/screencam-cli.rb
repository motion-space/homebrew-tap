cask "screencam-cli" do
  version "1.19.3"
  sha256 "a8bfca0e33d596b13d11a341167e0ee01ec1b642c19debc840e46abda799fe31"

  url "https://download.thescreen.cam/cli/releases/1.19.3/screencam-cli-1.19.3-macos-arm64.zip"
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
