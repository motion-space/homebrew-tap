cask "screencam-cli" do
  version "1.0.19"
  sha256 "449d57fc541eb49196d0187c362cd4afb7bf01a5f5c6b3f8fc249894e905ccd3"

  url "https://download.thescreen.cam/cli/releases/1.0.19/screencam-cli-1.0.19-macos-arm64.zip"
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
