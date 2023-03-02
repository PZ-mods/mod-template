## Ссылки
- [Форум](https://theindiestone.com/forums/index.php?/forum/45-pz-modding/)
- [Вики](https://pzwiki.net/wiki/Category:Modding)
- [Docs](https://projectzomboid.com/modding/)
## Структура мода
* ./ (root mod folder)
	* /media
		* [/anims_x](#mediaanims_x)
		* [/animsets](#mediaanimsets)
		* [/lua](#medialua)
			* [/client](#medialuaclient)
			* [/server](#medialuaserver)
			* [/shared](#medialuashared)
		* [/maps](#mediamaps)
		* [/models_x](#mediamodels_x)
		* [/scripts](#mediascripts)
		* [/sound](#mediasound)
		* [/texturepacks](#mediatexturepacks)
		* [/textures](#mediatextures)
		* [/ui](#mediaui)
	* [/mod.info](#modinfo)
	* [/poster.png](#posterpng)

##### ./media/anims_x
> Анимации .x или .fbx
##### ./media/animsets
> .xml описывающие анимации
##### ./media/lua
> lua скрипты
##### ./media/lua/client
> lua скрипты клиента
##### ./media/lua/server
> lua скрипты сервера
##### ./media/lua/shared
> lua скрипты используемые клиентской и серверной логикой
##### ./media/maps
> Файлы карты
##### ./media/models_x
> 3D модели .x или .fbx
> [Tutotial](https://theindiestone.com/forums/index.php?/topic/37647-the-one-stop-shop-for-3d-modeling-from-blender-to-zomboid/)
##### ./media/scripts
> .txt файлы с описанием предметов
> [Guide](https://pzwiki.net/wiki/Scripts_guide)
##### ./media/sound
> Звуки .wav
##### ./media/texturepacks
> Паки текстур .pack
##### ./media/textures
> Текстуры для моделей
##### ./media/ui
> Изображения для иконок интерфейса
##### ./mod.info
> Описание мода
```
name #Название мода
id #Идентификатор мода
description #Описание мода
poster #Обложка мода
require #Идентификатор(ы), которые требуются для мода
url #Ссылка на сайт мода
versionMin #Минимальная версия игры для мода
versionMax #Максимальная версия игры для мода
tiledef #Файл(ы) с параметрами тайлов
pack #Стороний пак(и) текстур используемые модом
```
##### ./poster.png
> Обложка мода 512x512
> ![Обложка мода 512x512](https://github.com/PZ-mods/mod-template/raw/master/poster.png)