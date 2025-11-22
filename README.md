# Big-Data TechStore Online S.A.

# 🟦 Evidencia de Aprendizaje 1 - Creación de una base de datos analítica

Autor: Aida Aguirre (Narño, Antioquia, Colombia)

Materia: Big Data

Institución: I. U. Digital de Antioquia

Docente: Andres Felipe Callejas Jaramillo

Plataforma utilizada: Databricks Free Edition (SQLite + Jupyter Notebook)

---

## 🧠 Descripción del proyecto
Este proyecto aplica los principios de Big Data para diseñar y gestionar una base de datos analítica enfocada en las ventas de una tienda online.  
Se trabajó con el dataset **“An Online Shop Business”**, realizando limpieza de datos, modelado entidad–relación, creación de la base de datos en SQLite y consultas SQL para evidenciar la correcta migración y organización de la información.  
El sistema permite analizar comportamiento de clientes, ventas por producto y tendencias geográficas, contribuyendo a decisiones basadas en datos.

---

## 📦 Dataset utilizado
- Fuente: [Kaggle — An Online Shop Business](https://www.kaggle.com/datasets/gabrielramos87/an-online-shop-business)  
- Autor: Gabriel Ramos  
- Descripción: Contiene información de transacciones de clientes, productos vendidos, cantidades, precios y países de los clientes.

Columnas principales:  
`TransactionNo, Date, ProductNo, ProductName, Price, Quantity, CustomerNo, Country`

---

## 🧩 Modelo Entidad–Relación (ERD)
El modelo está compuesto por tres entidades principales:

**Customer** — almacena información de los clientes (`customer_id`, `country`)  
**Product** — contiene los productos vendidos (`product_id`, `product_name`, `unit_price`)  
**Sales** — registra cada transacción (`transaction_id`, `customer_id`, `product_id`, `quantity`, `date`)  

**Relaciones:**  
- Un cliente puede realizar muchas ventas → relación 1:N  
- Un producto puede aparecer en muchas ventas → relación 1:N  

## 📊 El diagrama ER 

<p align="center">
  <img src="https://raw.githubusercontent.com/aida-aguirre/Big-Data/main/Actividad%201/diagramarelacional.png" 
       alt="ERD Actividad 1" 
       width="800"/>
</p>


Puedes ver el diagrama completo en dbdiagram.io en este enlace:  
[ERD TechStore Online S.A.](https://dbdiagram.io/d/modelo-entidad-relacion-ERD_TechStore-Online-S-A-690d69576735e11170aa4e58)

---

⚙️ Tecnologías y herramientas
- 🐍 Python (pandas, sqlite3)  
- 🧱 SQLite  
- 💻 Jupyter Notebook  
- 🖼️ Draw.io / Mermaid (para el diagrama ERD)

---

## 📂 Estructura del repositorio

Actividad_1/

│── Aguirre_Aida_Actividad_1.ipynb # Notebook principal

├── diagramarelacional.png # Diagrama ER

└── README.md # Este archivo


---

## 📘 Contenido del Notebook
El notebook contiene las siguientes secciones:

1️⃣ Definición de la problemática y dataset  
2️⃣ Diseño del modelo entidad–relación (ERD)  
3️⃣ Creación de la base de datos SQLite e inserción de datos  
4️⃣ Consultas SQL de verificación y análisis  
5️⃣ Conclusiones  

Cada sección incluye explicaciones en texto y resultados de código ejecutable.


---

# 🟦 Actividad 2 — Procesamiento de datos en Databricks (Cloud)

## 🚀 Objetivo

Implementar procesamiento de datos en entorno cloud utilizando Databricks, realizando:

- Diseño del esquema del dataset 
- Creación del DDL en Spark SQL  
- Configuración del entorno en Databricks  
- Ingesta de datos desde Kaggle  
- Creación de tabla en Spark  
- Validaciones con SQL y PySpark  
- Comparativo SQL vs Spark  

---

## 📂 Contenido de la Actividad 2

Carpeta: **actividad2**

Incluye los siguientes archivos:

- **Aguirre_Aida_Actividad_2.ipynb**  
  - Diseño del esquema  
  - Cargar dataset desde Kaggle  
  - Crear tabla en Spark  
  - Validaciones (SELECT, GROUP BY, DESCRIBE)  
  - Comparación SQL vs Spark  

- **DDL_spark_SQL.sql** — Sentencias DDL del esquema  
- **DiagramaSimple.png** — Representación visual del modelo
    <p align="center">
  <img src="https://raw.githubusercontent.com/aida-aguirre/Big-Data/main/actividad2/DiagramaSimple.png" 
       alt="Diagrama simple Actividad 2" 
       width="600"/>
</p>

- **comparativo.png** — Tabla comparativa SQL vs Spark  
<p align="center">
  <img src="https://raw.githubusercontent.com/aida-aguirre/Big-Data/main/actividad2/comparativo.png" 
       alt="Comparativo SQL vs Spark" 
       width="600"/>
</p>


---

## 📊 Validaciones realizadas en Databricks

### 🔹 En PySpark
- `df.printSchema()`  
- `df.describe().show()`  
- `df.groupBy(...).count()`  
- Lectura y persistencia de tabla con Spark SQL  

### 🔹 En SQL  
- `DESCRIBE TABLE`  
- `SELECT` y filtros  
- `GROUP BY`  
- `SHOW CREATE TABLE`  

Esto permitió validar la correcta ingesta, estructura y consistencia del dataset en el entorno cloud.

---

## 📂 Estructura del repositorio — Actividad 2

actividad2/

│── Aguirre_Aida_Actividad_2.ipynb

│── DDL_spark_SQL.sql

│── DiagramaSimple.png

└── comparativo.png

---

## 🔗 Enlace del repositorio
👉 https://github.com/aida-aguirre/Big-Data

---

## ✨ Créditos
Proyecto elaborado como parte de la formación en **Big Data** en la  
**I. U. Digital de Antioquia**, utilizando:

- Databricks Free Edition  
- Kaggle Datasets  
- Python + PySpark  
- SQL y Spark SQL  
- Jupyter Notebooks  
