# 📦 MyStoreDb – Proyecto académico de base de datos

Este proyecto fue desarrollado como parte de la materia **Análisis y Diseño de Sistemas** de la carrera de **Ingeniería en Sistemas**. Tiene como objetivo la creación e implementación de una base de datos completa para un sistema de gestión comercial, abarcando desde la definición del modelo lógico hasta la carga de datos y consultas avanzadas.

## 🧠 Objetivo del proyecto

Simular un sistema real de ventas en una tienda tecnológica, permitiendo gestionar:
- Clientes
- Empleados
- Pedidos y detalles
- Productos y stock
- Promociones y precios
- Comprobantes de pago y envío

El enfoque estuvo puesto tanto en el diseño lógico y la normalización, como en la implementación de lógica de negocio mediante **funciones**, **triggers**, **procedimientos** y **consultas complejas**.

---

## 📂 Contenido del proyecto

| Archivo | Descripción |
|--------|-------------|
| `01-CreateTables.sql` | Creación de todas las tablas, claves primarias y foráneas, restricciones `CHECK` y `UNIQUE`. |
| `02-CreateTriggers.sql` | Trigger para registrar automáticamente el historial de precios de los productos solo cuando cambian. |
| `03-DataInsert.sql` | Inserción de datos mediante scripts y carga masiva desde archivos CSV. |
| `04-CreateFunction.sql` | Funciones definidas por el usuario para encapsular lógica y reutilizar consultas complejas. |
| `05-Queries.sql` | Colección de consultas SQL para análisis de datos y validación de la lógica del modelo. |
| `LogicDiagram.png` | Diagrama lógico de la base de datos, que facilita la comprensión del modelo de datos. |

---

## 🛠️ Funcionalidades implementadas

- ✅ Modelo relacional completo y normalizado.
- ✅ Relaciones 1:N y N:M correctamente modeladas.
- ✅ Restricciones de integridad (`PK`, `FK`, `CHECK`, `UNIQUE`).
- ✅ Carga de datos automatizada con `BULK INSERT`.
- ✅ Trigger que evita duplicaciones en historial de precios.
- ✅ Funciones que encapsulan lógica de negocio (stock disponible, órdenes por cliente/empleado).
- ✅ Consultas complejas usando `JOIN`, `GROUP BY`, `HAVING`, `NOT EXISTS`, `CROSS APPLY`, etc.
- ✅ Ejercicios con filtros, agregaciones, subconsultas y variantes de soluciones para un mismo problema.

---

## 🚀 Destacados técnicos

- Se aplicaron buenas prácticas SQL, como el uso de funciones reutilizables y separación de responsabilidades.
- El trigger de historial de precios compara valores anteriores y nuevos para evitar redundancias.
- Se utilizó `CROSS APPLY` con funciones que devuelven tablas, mostrando conocimientos avanzados para el nivel Jr.
- Todas las soluciones fueron testeadas con datos reales de prueba.

---

## 🖼️ Vista del modelo lógico

![Diagrama lógico](./LogicDiagram.png)

---