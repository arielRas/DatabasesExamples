# 💾 Proyecto Final – Curso de Bases de Datos (CoderHouse)

Este proyecto fue desarrollado como parte del curso **Introductorio de Bases de Datos** en la plataforma **CoderHouse**. Representa mi primer acercamiento formal al diseño y manipulación de bases de datos relacionales, sentando las bases para lo que luego profundizaría en contextos más avanzados con SQL Server.

---

## 🎯 Objetivo del proyecto

Modelar, poblar y operar una base de datos para una empresa ficticia de ventas de hardware informático. El proyecto resuelve tareas administrativas, gestiona ventas, stock, clientes y empleados, e incorpora consultas analíticas básicas.

---

## 📦 Tecnologías y lenguajes utilizados

- 🛠️ **MySQL** como motor de base de datos.
- 📚 Sentencias **DDL**, **DML**, **TCL** y **DCL**.
- 👤 Creación de usuarios y asignación de permisos.
- 💻 Scriptado completo de creación, mantenimiento y análisis de la base de datos.

---

## 📁 Estructura del proyecto
```
Coderhouse-Sql/
├── Documentacion/
│ ├──📄 Proyecto Final.pdf
│ └──📄 Instrucciones para la creacion de la base de datos.txt
│
├── Scripts/
│ ├── 01-CreateSchemaAndTables.sql  # Definición de todas las tablas, claves primarias y foráneas.
│ ├── 02-CreateTriggers.sql # Triggers para auditoría y control automático.
│ ├── 03-InsertRegister.sql # Carga masiva de datos realistas y variados.
│ ├── 04-CreateViews.sql # Vistas para reportes automatizados y consultas frecuentes. 
│ ├── 05-CreateFunction.sql # Funciones definidas por el usuario para encapsular lógica.
│ ├── 06-CreateStoredProcedures.sql # Procedimientos almacenados para automatizar tareas.
│ ├── 07-CreateUsers.sql #C reación de usuarios y asignación granular de permisos según roles.
│ ├── 08-Transaction.sql # Uso de transacciones, `COMMIT` y `ROLLBACK` para garantizar la integridad de datos.
│ ├── BackUpDB.sql
│ └── TestFunctionAndProcedures.sql
└── README.md
```

---

## 🧠 Habilidades aplicadas

- ✅ Creación de esquemas y relaciones entre entidades.
- ✅ Aplicación de restricciones y buenas prácticas (aunque en esta etapa todavía no conocía normalización a fondo).
- ✅ Uso de funciones (`FN_MAX_MIN_PRECIO_TIPO_PRODUCTO`) con parámetros condicionales.
- ✅ Automatización mediante procedimientos (`SP_NEW_PRODUCT`, `SP_UPDATE_STOCK`).
- ✅ Control y recuperación con auditoría (`SP_RESTORE_DATA_PROD_SALES` + `SP_SPLIT`).
- ✅ Diseño de vistas que permiten análisis como:
  - Producto más vendido
  - Vendedor con más ventas
  - Monto vendido por vendedor
  - Empleados de vacaciones
  - Productos por tipo y marca
- ✅ Gestión de transacciones seguras y reversibles.
- ✅ Manejo de permisos avanzados para múltiples perfiles de usuario (`GRANT`, `REVOKE`).

---

## 🧩 Puntos fuertes del proyecto

- Si bien fue un proyecto de nivel inicial, la variedad y profundidad de objetos creados es destacable para un curso introductorio.
- El uso de funciones y SP con lógica condicional demuestran una comprensión de la lógica de negocio.
- La documentación final en PDF muestra no solo lo técnico, sino también la planificación y diseño del modelo de negocio.

---

## 🚀 Comentarios finales

Este proyecto fue mi **puerta de entrada al mundo de las bases de datos** y me permitió adquirir bases sólidas en SQL que luego expandí con SQL Server.. Si bien en este punto aún no conocía profundamente la **normalización** ni aplicaba todas las buenas prácticas del modelado relacional, el enfoque en lógica, automatización y seguridad fue clave para mi crecimiento.

Desde entonces, evolucioné hacia un perfil más enfocado al **backend** y proyectos transaccionales complejos, pero este proyecto sigue siendo una muestra valiosa de mis primeros pasos y del entusiasmo con el que comencé esta carrera.

---
