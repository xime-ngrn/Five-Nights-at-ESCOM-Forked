# Licencias — Five Nights at ESCOM

**Equipo:** -
**Integrantes:** 
* Chávez Romero Jonathan - 2024630102 
* Moreno Noguerón Ximena - 2024630201 
* Reyes Castellanos José Abel - 2020311353
**Repositorio:** https://github.com/xime-ngrn/Five-Nights-at-ESCOM-Forked
**Última actualización:** 05/10/2026

---

## 1. Resumen

Revisando el proyecto, verificamos que **no tiene licencia.** Además, no cuenta con un archivo *.gitignore*.

| Componente | Licencia |
|---|---|
| Código y recursos del proyecto base | Ninguna: todos los derechos reservados al autor original |
| Concepto de *Five Nights at Freddy's* | Usarlo como fangame no oficial y sin fines de lucro |
| Paquete genérico de sprites y sonidos (sin uso) | Origen y licencia no documentados, sin embargo, son utilizados dentro del proyecto |
| Aportaciones del equipo | — |
| GameMaker | Propietaria, con licencia gratuita para uso no comercial. Desarrollar y exportar a Windows y Android sin vender el juego |
| Android Studio y Android SDK | Términos de uso del SDK de Android. Permiten compilar y probar el juego |

## 2. Origen del proyecto

| Repositorio | Papel |
|---|---|---|
| [CarlosAdrianHernandezTorres/Five-Nights-at-ESCOM](https://github.com/CarlosAdrianHernandezTorres/Five-Nights-at-ESCOM) | Proyecto original |
| [gabrielhuav/Five-Nights-at-ESCOM](https://github.com/gabrielhuav/Five-Nights-at-ESCOM) | Fork usado como base del curso (*upstream*) |
| [xime-ngrn/Five-Nights-at-ESCOM-Forked](https://github.com/xime-ngrn/Five-Nights-at-ESCOM-Forked) | Fork del equipo |

## 3. Cómo se verificó

Revisión hecha el 05/10/2026 sobre el commit `7ab6b03`:

1. No existe `LICENSE`, `LICENSE.md`, `COPYING` ni un archivo similar en la raíz de ninguno de los tres repositorios.
2. La API de GitHub (`gh api repos/<dueño>/<repositorio>`) devuelve `"license": null` para los tres.
3. El historial completo (`git log --all`) no contiene ningún archivo de licencia; solo este documento, que estaba vacío.
4. Ningún archivo de `objects/`, `rooms/` ni `sequences/` tiene encabezados de licencia o de copyright.

## 4. Qué implica no tener licencia

- La ley protege una obra desde que se crea, sin necesidad de registrarla (en México, artículo 5 de la Ley Federal del Derecho de Autor). Si no hay licencia, nadie más tiene permiso para copiarla, distribuirla ni crear obras derivadas, salvo lo que autorice su autor.
- Los Términos de Servicio de GitHub (sección D.5) permiten a cualquier usuario ver un repositorio público y hacerle fork dentro de GitHub. Eso cubre el trabajo del curso: fork, ramas y pull requests.
- Esos términos **no** permiten:
  - publicar el APK en Google Play u otra tienda;
  - distribuir el juego fuera de GitHub;
  - usarlo con fines comerciales;
  - cambiarle la licencia.

## 5. Elementos de terceros

### 5.1 *Five Nights at Freddy's*

Este juego es un fangame no oficial inspirado en *Five Nights at Freddy's*. La marca, los personajes y el concepto de esa saga pertenecen a Scott Cawthon, que no tiene relación con este proyecto. Lo usamos sin fines de lucro y con fines educativos.

### 5.2 Recursos propios del juego

| Recurso | Ubicación | En uso |
|---|---|---|
| 225 sprites | Carpeta `Sprites/FNaE` del IDE | 190 |
| 15 sonidos | Carpetas `Sonidos/Efectos de Sonido` y `Sonidos/Musica` del IDE | 14 |
| Video del jumpscare | `datafiles/vd_PSJS1.mp4` | Sí |

Se atribuyen al autor original. El repositorio no indica si alguno, por ejemplo la música, proviene de terceros.

### 5.3 Recursos que agregue el equipo

Cada recurso nuevo (sprites del nuevo personaje, sonidos, bocetos, etc.) se registra aquí con su autor, origen y licencia, e indicando si se generó o retocó con IA.

| Recurso | Ruta | Autor u origen | Licencia | ¿IA? |
|---|---|---|---|---|
| *(pendiente)* | | | | |

## 6. Herramientas

| Herramienta | Licencia | Notas |
|---|---|---|
| GameMaker LTS 2022 (el proyecto indica `IDEVersion 2022.0.3.85`) | Propietaria (YoYo Games / Opera) | La licencia gratuita para uso no comercial permite exportar a Windows y Android. Vender el juego requiere la licencia comercial. |
| Android Studio y Android SDK | Android Studio es gratuito; el SDK se usa bajo el *Android Software Development Kit License Agreement*, que se acepta al instalarlo | Solo se usa para obtener el SDK, el NDK, el JDK y el emulador. |
| Claude (Anthropic) | Términos de uso de Anthropic | Apoyo para revisar el código base y redactar documentos. Ver [`IDEA.md`](evidencias/entrega1/IDEA.md#11-uso-de-asistentes-de-ia). |

## 7. Reglas de uso para este proyecto

1. Uso exclusivamente académico y sin fines de lucro.
2. No publicar el APK en tiendas ni distribuir el juego fuera de GitHub sin permiso por escrito del autor original.
3. Dar crédito a Carlos Adrián Hernández Torres como autor del juego base, en el README y en cualquier presentación.
4. Registrar cada recurso nuevo en la sección 5.3.
