# Haxe экстерны для SDK [DEVTODEV](https://www.devtodev.com/)

[![](https://github.com/VolkovRA/HaxeDevtodev/blob/master/logo.png?raw=true "DEVTODEV")](https://devtodev.com/)

Описание
------------

Devtodev - это аналитическая платформа для игр, позволяющая собирать метрики и другую полезную статистику об игровом процессе пользователей внутри вашего приложения. Этот сервис позволяет строить отчёты, удобно просматривать графики.

Этот репозитории содержит описание типов для интеграции их SDK в ваше приложение.

Как использовать
------------------------------

```
trace(Devtodev.getSdkVersion());
```

Добавление библиотеки
------------------------------

1. Установите haxelib себе на локальную машину, чтобы вы могли использовать библиотеки Haxe.
2. Установите devtodev себе на локальную машину, глобально, используя cmd:
```
haxelib git devtodev https://github.com/VolkovRA/HaxeDevtodev master
```
Синтаксис команды:
```
haxelib git [project-name] [git-clone-path] [branch]
haxelib git minject https://github.com/massiveinteractive/minject.git         # Use HTTP git path.
haxelib git minject git@github.com:massiveinteractive/minject.git             # Use SSH git path.
haxelib git minject git@github.com:massiveinteractive/minject.git v2          # Checkout branch or tag `v2`.
```
3. Добавьте библиотеку devtodev в ваш Haxe проект.
4. Подключите sdk сервиса, согласно вашему таргету из их [мануала](https://docs.devtodev.com/integration).

Дополнительная информация:
 * [Документация ZeroSSL](https://zerossl.com/documentation/api/ "ZeroSSL Documentation")
 * [Документация Haxelib](https://lib.haxe.org/documentation/using-haxelib/ "Using Haxelib")
 * [Документация компилятора Haxe](https://haxe.org/manual/compiler-usage-hxml.html "Configure compile.hxml")
 * [Документация Devtodev](https://docs.devtodev.com/ "Introduction")