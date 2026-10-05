# Parte 1: Idea original de la aplicación

En esta parte se presenta la aplicación que quiere construir. 

## 1.1 Ficha de idea

* **Ruta elegida y motivo:** 
  * *Ruta:* Productividad y Colaboración Académica.
  * *Motivo:* Facilitar la organización de equipos de trabajo universitarios para evitar la desorganización, la duplicidad de tareas y los retrasos en las entregas de proyectos escolares.
* **Usuario y contexto:** 
  * *Quién:* Estudiantes universitarios y miembros de equipos de desarrollo o proyectos académicos.
  * *Dónde y cuándo:* Desde sus teléfonos celulares, en cualquier momento y lugar, ya sea durante las clases presenciales, reuniones de equipo a distancia o antes de la fecha límite de entrega de una tarea.
* **Problema observable:** Los estudiantes universitarios frecuentemente enfrentan dificultades para coordinar proyectos en equipo debido a la falta de un seguimiento claro de pendientes, lo que provoca que las tareas se concentren en una sola persona o se entreguen fuera de tiempo.
* **Alternativa actual:** Uso de chats grupales de mensajería instantánea (como WhatsApp) donde los acuerdos se pierden, o bien herramientas de escritorio complejas (como Trello o Jira en versión web) que no están optimizadas para consultas rápidas desde el celular.
* **Tarea principal del usuario:** Crear un equipo de trabajo, agregar tareas con fechas límite y actualizar el estatus de sus pendientes (*Pendiente, En Proceso, Terminado*).
* **Criterio de éxito:** El usuario puede crear una nueva tarea dentro de su proyecto y cambiar su estatus en menos de 30 segundos desde la interfaz móvil.
* **Alcance de la primera versión (MVP):** 
  * *Entra:* Autenticación local de usuario, creación de proyectos y tableros de tareas, asignación de estados (*Pendiente, En Proceso, Terminado*) y establecimiento de fechas límite.
  * *Se aplaza de forma deliberada:* Notificaciones push en tiempo real vía servidores externos, chat integrado dentro de la aplicación y sincronización avanzada en la nube con múltiples dispositivos.

## 1.2 Material visual de la idea

* **Bosquejos de pantallas principales (Mockups conceptuales):**
  1. *Pantalla de Inicio / Tablero de Tareas:* 
  2. *Pantalla de Detalle / Creación de Tarea:* 
  3. *Pantalla de Perfil / Selección de Proyecto:* 
* **Diagrama del recorrido del usuario (User Flow):**
  * `Apertura de la App` $\rightarrow$ `Pantalla Principal (Lista de Proyectos)` $\rightarrow$ `Selección de Proyecto` $\rightarrow$ `Visualización de Tablero de Tareas` $\rightarrow$ `Creación o Edición de Tarea` $\rightarrow$ `Guardado y Actualización de Estatus` $\rightarrow$ `Fin de la tarea principal`.
* **Estados alternativos:**
  * *Carga:* Indicador circular centrado con el texto *"Cargando tus tareas..."* al abrir un proyecto.
  * *Lista vacía:* Mensaje visual que indica *"No hay tareas creadas en este proyecto. ¡Agrega la primera!"* con un botón de acción.
  * *Datos inválidos:* Alerta en color rojo al intentar guardar una tarea con el campo de título vacío o una fecha límite retroactiva.

## 1.3 Historia de usuario y criterio de aceptación

* **Historia de usuario principal:**
  > **Como** estudiante universitario integrante de un equipo de proyecto,  
  > **quiero** agregar y actualizar el estatus de las tareas asignadas dentro de la aplicación móvil,  
  > **para** mantener a mis compañeros informados sobre el avance y cumplir con la fecha de entrega.

* **Criterio de aceptación:**
  > **Dado** que el usuario se encuentra dentro del tablero de tareas de su proyecto,  
  > **cuando** presiona el botón de añadir tarea, llena los campos requeridos (título y fecha límite) y confirma la acción,  
  > **entonces** la nueva tarea aparece reflejada inmediatamente en la lista con el estatus de "Pendiente".

* **Verificabilidad:** Cualquier evaluador puede abrir la aplicación, navegar a un proyecto, crear una tarea con datos válidos y comprobar de manera visual que esta se añade de forma correcta al tablero.
