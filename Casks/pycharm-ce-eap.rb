cask 'pycharm-ce-eap' do
  version '2017.1,171.2455.3'
  sha256 '5413d3a47e17a1d8ae696d99e782bd5459a16ce80bd63bc93bb9aea7eedc8319'

  url "https://download.jetbrains.com/python/pycharm-community-#{version.after_comma}.dmg"
  name 'Jetbrains PyCharm Community Edition EAP'
  name 'PyCharm CE EAP'
  homepage 'https://www.jetbrains.com/pycharm/nextversion/'

  conflicts_with cask: 'pycharm-ce'

  app "PyCharm CE #{version.before_comma} EAP.app"

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Caches/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Logs/PyCharm#{version.before_comma.major_minor}",
                "~/Library/Preferences/PyCharm#{version.before_comma.major_minor}",
              ]
end
