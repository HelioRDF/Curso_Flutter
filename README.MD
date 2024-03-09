- Instalar vscode
- Instalar o plugin do dart no vscode
- Instalar o plugin do flutter no vscode


- Instalar o Chocolatey (Gerenciador de pacotes) 
- https://chocolatey.org/install 
> Set-ExecutionPolicy Bypass -Scope Process -Force; [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))
> choco ?


- Instalar android studio
- Criar um virtual device
- instalar plugin dart e flutter

- Instalar o Flutter
https://docs.flutter.dev/get-started/install

-Verificar instalação
> flutter doctor

- Para resolver...
1. abrir o android studio
2. Procurar SDK Manager
3. SDk Tools
4. Habilitar Android SDK Command-line Tools | Android Emulator | Android SDK Plataform Tools

[!] Android toolchain - develop for Android devices (Android SDK version 34.0.0)
    X cmdline-tools component is missing
      Run `path/to/sdkmanager --install "cmdline-tools;latest"`
      See https://developer.android.com/studio/command-line for more details.
    X Android license status unknown.
      Run `flutter doctor --android-licenses` to accept the SDK licenses.
      See https://flutter.dev/docs/get-started/install/windows#android-setup for more details.

 - Executar
 flutter doctor --android-licenses

- Criar  projeto
 > flutter create teste

- Executar o flutter no VScode
CTRL+F5

- Atualizar dependências do flutter pubspec.yaml
> flutter pub get

- Consultar versão do Dart
> dart --version

-Criar estrutura stateless ou stateteful
> digita st, ctrl+barra

- Renomear atributo
> ctrl + D

- Organizar o código
> Shift+Alt+F

-Cometar código
> Shift+Alt+A

Abrir arquivo no Windows
> Shift+Alt+R

More actions
>CTRL + .

