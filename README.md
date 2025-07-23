# GOG Galaxy
## Building
> **_NOTE:_**  With org.winestaging.Sdk and org.winestaging.Platform installed.
```console
flatpak run org.flatpak.Builder build-dir --repo=../Compatpak/repo --force-clean com.gog.Galaxy.yml
```
## Installing
```console
flatpak install --user ../Compatpak/repo com.gog.Galaxy
```
## Running
```console
flatpak run com.gog.Galaxy
```
## Removing
```console
flatpak remove com.gog.Galaxy
```
## Troubleshooting
- Check if Flatpak is installed
```console
flatpak list | grep Galaxy
```
- Enter Flatpak in command line mode
```console
flatpak run --command=sh com.gog.Galaxy
```
## Flatpak locations
- Installation directory             = /var/lib/flatpak/app/com.gog.Galaxy/
- Wine prefix                        = ~/.var/app/com.gog.Galaxy/data/wine
