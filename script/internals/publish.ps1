$basePath = 'C:\MyGit\Personal\ng-vsts';
$distPath = $basePath + '\dist';

Set-Location $basePath;

### Build
ng build;


### Replace HTML with Js -- Start
$relativeSubpath = '\script\internals\html-replacer';
$htmlReplacerPath = $basePath + $relativeSubpath;
Set-Location $htmlReplacerPath;

dotnet '.\Mmu.Hji.Console.dll' $distPath;
### Replace HTML with Js -- End


### Publish extension -- Start
Set-Location $basePath;
$publishKey = Get-Content 'C:\Users\matthias.mueller\Dropbox\AssetsAndTools\VSTS_Key.txt';
tfx extension publish --manifest-globs vss-extension.json --rev-version -t $publishKey;
### Publish extension -- End