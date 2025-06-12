# 🧃 SuSoda – Proyecto académico de Base de Datos I y II

Este proyecto fue desarrollado como parte de las materias **Base de Datos I y II** de la carrera de **Ingeniería en Sistemas**, tomando como base el caso propuesto en el libro:

📘 *"Fundamentos de Diseño y Modelado de Datos"* de **Francisco A. Morteo** y **Nicolás L.E. Bocalandro**, utilizado como material de referencia en la cátedra.

---

## 🧠 Objetivo del proyecto

Diseñar y construir un sistema de base de datos para la empresa ficticia *SuSoda*, dedicada a la producción y distribución de bebidas. El sistema debe:

- Administrar clientes, productos, pedidos y stock.
- Gestionar proveedores, insumos y cotizaciones.
- Permitir análisis y comparaciones de cotizaciones históricas.

Se trabajó en dos enfoques complementarios:

- 📦 **OLTP (Transaccional)**: Modelo relacional normalizado en 3FN para operar el negocio.
- 📊 **OLAP (Analítico)**: Modelo dimensional en estrella orientado a análisis de cotizaciones de proveedores.

---

## 🏗️ Estructura del proyecto

```
SuSoda/
│
├── 01-OLTP/
│ ├── 01 - SUSODA_OLTP.sql # Creación de tablas relacionales
│ ├── 02 - SUSODA_OLTP_DATOS.sql # Inserción de datos y lógica de negocio
│ ├── OltpLogicDiagram.png # Diagrama lógico relacional
│ └── OltpDer.png # Diagrama entidad-relación
│
├── 02-OLAP/
│ ├── 03 - SUSODA_OLAP_ESTRELLA.sql # Modelo dimensional (estrella)
│ ├── 04 - SUSODA_OLAP_ESTRELLA_ETL.sql # Proceso ETL desde OLTP
│ └── OlapLogicDiagram.png # Diagrama del modelo estrella
│
├── Docs/
│ └── ProblemToSolve.txt # Enunciado original del caso SuSoda
|
└──README.md

```

---

## 🧩 Tecnologías y técnicas aplicadas

### 🔸 OLTP (Online Transaction Processing)

- Modelo relacional normalizado (3FN).
- Claves primarias y foráneas correctamente aplicadas.
- Relación entre pedidos, productos, clientes y formas de pago.
- Gestión completa de stock e insumos.
- Modelado complejo de cotizaciones, órdenes de compra y solicitudes.
- Consideración de reglas de negocio como stock mínimo, múltiples cotizaciones por solicitud, múltiples formas de contacto, etc.

### 🔹 OLAP (Online Analytical Processing)

- Modelo en estrella con dimensiones:
  - Proveedor
  - Insumo
  - Tiempo
- Tabla de hechos: `FACT_COTIZACION` con medidas como cantidad, precio, validez y subtotal.
- Carga de datos vía proceso **ETL** desde la base OLTP.

---

## 🚀 Puntos fuertes del proyecto

- 🧠 Aplicación simultánea de diseño OLTP y OLAP para el mismo dominio.
- 🧰 Proceso ETL manual modelado por SQL, sin herramientas externas.
- 🔍 Normalización correcta con especial atención a detalles y restricciones.
- 📊 Posibilidad de realizar análisis históricos sobre proveedores y precios.
- ✍️ Fidelidad al enunciado académico, respetando restricciones de negocio como:
  - Cotizaciones múltiples por solicitud
  - Cantidades cotizadas distintas a las solicitadas
  - Recepciones parciales

---

## 🖼️ Visualizaciones

### 🧾 [Diagrama Entidad-Relación OLTP](./01-OLTP/OltpDer.png)

### 📘 [Modelo Lógico OLTP](./01-OLTP/OltpLogicDiagram.png)

### 📊 [Modelo Estrella OLAP](./02-OLAP/OlapLogicDiagram.png)

---