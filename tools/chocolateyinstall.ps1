$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64      = 'https://gitlab.com/librewolf-community/browser/windows/uploads/25c11fdf3e0489ccc82e261f493753f6/librewolf-88.0.en-US.win64-setup.exe'

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url64bit      = $url64

  softwareName  = 'LibreWolf'

  checksum64    = 'CE0D822E45D5FAD9C324CE79EB4FB9D2B4F80CF83984EFBBF8A699849DBC5088'
  checksumType64= 'sha256'

  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs
