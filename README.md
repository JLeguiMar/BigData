# BigData
📌 Descripción

Este repositorio contiene diferentes consultas SQL, tablas con datos y procedimientos almacenados diseñados para gestionar información sobre citas y actividades en una base de datos SQL Server.

⚙️ Requisitos

Antes de ejecutar las consultas y procedimientos almacenados, asegúrate de contar con:

🖥 SQL Server instalado en tu máquina local.

📂 SQL Server Management Studio (SSMS) o una herramienta similar para ejecutar los scripts.

📌 Una base de datos creada con el nombre adecuado (ej. BigData).

📊 Tablas Incluidas

Las siguientes tablas están definidas en la base de datos:

HOTDATE: Contiene información sobre citas.

ATTRACTIVEPERSON: Almacena datos de personas relacionadas con las citas.

HOTDATE_ACTIVITY: Registra actividades asociadas a las citas.

ACTIVITY: Contiene la informacion de la actividad

ROMANTICMEAL: Tabla de paso entre COMBOMEAL y HOTDATE

USERS: Contine la informacion del usuario

COMBOMEAL: Posee la informacion sobre la comida

RESTAURANT: Informacion del restaurante

ACTIVITY_TYPE: Contiene los diferentes tipos de actividades

⚡ Procedimientos Almacenados

Contiene ciertas consultas, utilizando la infromacion registrada en la base datos, la cual podra ser cargada directamente del script que contiene las tablas

🛠 Cómo Usarlo de Forma Local

1️⃣ Abrir SQL Server Management Studio (SSMS).
2️⃣ Conectar a la base de datos local.
3️⃣ Crear las tablas y procedimientos almacenados ejecutando los scripts correspondientes.
5️⃣ Ejecutar las consultas o procedimientos almacenados según sea necesario.
