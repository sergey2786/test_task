#### Тестовое задание на специалиста по обновлениям

 Скрипт update_package.sh установки htop на ударенный хосты.

 Для проверки скрипта был сделан стенд с помощью vagrant, в качестве вм. используем virtualbox.


 Порядок проверки:
      
      1. Клонируем репозиторий git clone https://github.com/sergey2786/test_task.git
      2. Заходим в папку meriterra
      3. Поднимаем виртуальные машины vagrant up (vagrant и virtualbox должны быть установленны)
      4. Заходим на сentralserver (vagrant ssh сentralserver)
      5. Запускаем скрипт update_package.sh (sh update_package.sh). Так же скрипт можно сделать  
          исполняемым (chmod +x update_package.sh) и запустить ./update_package.sh.