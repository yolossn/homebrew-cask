cask "contour" do
  version "0.3.4.223"
  sha256 "9722dd1532259ae5f9d2e25fbe7b3c37f0dad6365f1e6cf91fbe9011cf393090"

  url "https://github.com/contour-terminal/contour/releases/download/v#{version}/contour-#{version}-osx.dmg"
  name "Contour"
  desc "Terminal emulator"
  homepage "https://github.com/contour-terminal/contour/"

  app "Contour.app"
  binary "#{appdir}/Contour.app/Contents/MacOS/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/shell-integration.zsh",
         target: "#{HOMEBREW_PREFIX}/share/zsh/site-functions/_contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour"
  binary "#{appdir}/Contour.app/Contents/Resources/terminfo/63/contour-latest",
         target: "#{ENV.fetch("TERMINFO", "#{Dir.home}/.terminfo")}/63/contour-latest"

  zap trash: "~/.config/contour"
end
