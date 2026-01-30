# wb26-trust-minigemm
Верификация алгоритмов умножения матриц
## Запуск через VSCode на Windows
1) Клонировать репозиторий
2) Скачать отсюда систему верификации VST [https://github.com/rocq-prover/platform/releases/tag/2025.01.0].
   При установке обязательно нужно в окне установщика "Choose Components" добавить галочки у coq-compcert и у coq-vst.
3) В Visual Studio Code установить расширение VsCoq и откатить его до версии 2.2.3
4) Запустить командную строку указать путь к папке с проектом прописать команды `clightgen -normalize Strassen.c` и `coqc Strassen.v`
