# Actualización 0.1.10 (1010) · Opciones y pausa táctil

Registro real del 14 de noviembre de 2026, Ciudad de México. **Estado vigente: 0.1.10 (1010) PUBLICADA en la prueba cerrada Alpha. Envío ID 3: enviado el 14 nov 2026 a las 20:35 y publicado a las 20:42 (Ciudad de México), confirmado directamente en Play Console. No es producción abierta.** La pista sigue siendo prueba cerrada Alpha, no producción abierta.

## 1. Punto de partida y alcance

El propietario fusionó PR #6 en `ae1037ce11aa66a833e930f6d27e48467eb6443c`. Se comparó con el commit probado `6b763785d538a10dd82b323125c526098fc292af`: árbol idéntico. Contiene panel de Opciones, volumen de música/efectos persistente, borrado de progreso con confirmación y pausa táctil. Conserva PR #2, Noche 2, Intruso, guardado, Continuar, privacidad y créditos originales de Carlos Adrián Hernández Torres y colaboradores.

Las correcciones aprobadas son la ú de «Salir al Menú» y la ganancia del sonido al salir de los agradecimientos. No se incluye el ajuste de sincronización retirado por indicación del propietario. El vídeo adjunto al PR no se añadió al juego: el único MP4 empaquetado es `assets/vd_psjs1.mp4`.

PR #7 añadió exclusivamente `.github/CODEOWNERS` (`* @gabrielhuav`) y se fusionó con aprobación expresa en `c267873a6e2177ffd06654b5956129378edfaab1`. Main tiene reglas activas27289829: PR obligatorio, una aprobación, propietario del código, nueva revisión tras cambios, conversaciones resueltas, rama actualizada y checks `project-integrity` / `validate-gamemaker-project`. Bloquea borrado y push forzado. La excepción del administrador sólo funciona mediante PR; el único administrador comprobado es el propietario. GitHub impide aprobar el propio PR, por lo que sus PR propios se integran con autorización expresa del usuario y esa excepción limitada.

## 2. Comprobar Play antes de elegir versión

Se abrió la aplicación existente en la cuenta ya iniciada. «Todos los paquetes» mostraba exactamente dos versiones:1001/0.1.1 Activo y1000/0.1.0 Inactivo. Alpha mostraba0.1.1 disponible para verificadores específicos, un país. No había cambios sin publicar al iniciar la preparación. Capturas001 y005.

Se eligió **0.1.10/1010**: mayor que el máximo1001 de Console y que las pruebas locales1002–1009. El salto es deliberado para no reutilizar códigos locales. No se cambió paquete ni llave. Rama `codex/play-options-update`; commit de versión `a7bee92ee7a04cc4f5e4c6d0b2dc0985c2957267`, cuyo único cambio semántico es `options_android_version` de0.1.1 a0.1.10. `origin` conserva el fork de gabrielhuav; no se escribió en upstream.

## 3. Compilar desde GameMaker

1. Abrir el proyecto `C:\dev\Five-Nights-at-ESCOM\Five Nights at ESCOM.yyp` y recargar los cambios externos.
2. Conservar GameMaker LTS2026, IDE2026.0.0.16/runtime2026.0.0.23, destino Android, VM, Default y la firma existente. No leer ni introducir contraseñas mediante automatización.
3. Abrir Construir > Crear ejecutable y elegir **Android App Bundle Archivos (.aab)**. Guardar en `compilaciones\Five-Nights-at-ESCOM-0.1.10-1010-release.aab`. Captura003.
4. Esperar el resultado real **SUCCESS: Package Program Complete**; tiempo indicado46.35s. Captura004. No confundir «Guardar como» con compilación terminada.
5. Repetir exportación APK para prueba local de la misma versión/fuente, sin cambios de lógica. Una ruta con barras `/` fue rechazada por Guardar como; se corrigió usando sólo el nombre del archivo en la carpeta ya seleccionada. APK generado correctamente; no se sobrescribió el AAB.

## 4. Verificar los artefactos

| Artefacto | Tamaño | SHA256 |
|---|---:|---|
| AAB release1010 |87,105,199bytes|`9E201C01EDBA0D3B04FE9FA51F55B3572CFAFDC734C1387A12DA8A8CFAEC39CD`|
| APK release1010 |96,815,469bytes|`887F70487DA52D20FDF1CB5D2F8553EBA969B6003A6A98DB90C49E6260BD1470`|

Bundletool1.18.3 validó el AAB y permitió extraer manifiesto/configuración. Jarsigner confirmó la firma; las advertencias de certificado autofirmado/cadena y ausencia de sello temporal corresponden al certificado de carga existente, no a una firma ausente. Apksigner validó el APK. Certificado SHA256 en ambos: `590D41B6D23761C0DD8C4E7EE588AA88106F5737D8322EEAD386F3FA968AB4D3`.

Manifiesto: paquete `ovh.gabrielhuav.fivenightsatescom`, versión0.1.10/1010, minSDK24, targetSDK36, ARM64. Sólo permiso propio de receptor no exportado de AndroidX; no se añadieron Internet, micrófono, cámara, teléfono ni almacenamiento. Configuración `PAGE_ALIGNMENT_16K`. Todos los segmentos ELF PT_LOAD de libyoyo.so cumplen alineación16KB. Los chunks de `game.droid` entre APK y AAB sólo difieren en GEN8, cabecera general de compilación; los demás son idénticos. Resultados reproducibles en `verificar_paquetes.py`, `verificacion_paquetes_0.1.10.json`, `manifest_1010.xml`, `config_1010.json`, `firma_1010.txt` y `validacion_bundle.txt`.

`python tools/validate_project.py`:1181 recursos correctos. No se reserializó ningún recurso GameMaker con JSON.

## 5. Pruebas y límites

Se instaló APK1010 con actualización (`install -r`) sobre1009 en **FiveNightsESCOM_Test**, páginas4096, sin borrar datos. Android confirmó0.1.10/1010. Al arrancar apareció un ANR de **com.android.systemui**; se eligió Wait y se recuperó el sistema. Captura007 conserva la incidencia,008 muestra el menú recuperado con Continuar y versión correctos. No se registró como ANR del juego.

En1010 se comprobó menú, acceso a Opciones con100%/100%, pausa táctil con «Salir al Menú» completo, reapertura de pausa y regreso al menú (capturas010,014,019,023). Algunas capturas intermedias fueron oscuras o reflejaron el estado anterior; no prueban visualmente la reanudación de la oficina y no se calificó ese caso como aprobado en esta repetición. No se reintrodujo el ajuste de sincronización. Se conserva la aclaración del propietario: el S22+ mostraba el juego normalmente. No se usó el S22+ en esta repetición.

La regresión funcional más amplia corresponde al PR6 anterior a la fusión: APK1009 normal y APK1008 temporal instrumentado, con33 comprobaciones numéricas de ganancia a0/10/100% aprobadas. La instrumentación se retiró del juego final. El informe `docs/pruebas-pr-6-2026-11-14.md` conserva casos, capturas y límites; el árbol del juego integrado coincide con el probado. La ejecución en emulador16KB fue sobre1007, no1010; para1010 se verificó estáticamente la alineación del binario. No afirmar una prueba completa de1010 en16KB.

Siguen sin certificarse victoria natural, agotamiento completo de batería/apagón, recorrido completo de Intruso y medición acústica. No equivale a QA exhaustiva ni garantiza aprobación de Google. Estos límites deben permanecer visibles al autorizar el envío a la prueba cerrada.

## 6. Crear la actualización en Play Console

1. Abrir Probar y lanzar > Pruebas > Prueba cerrada > Alpha, comprobar la0.1.1 anterior. No modificar producción, países ni verificadores. Se conserva la lista existente26-O Y2027-1; no se abrieron correos individuales.
2. Pulsar **Crear una versión nueva**. Captura006.
3. Pulsar **Subir**, seleccionar el AAB1010 firmado y esperar carga/procesamiento. Play reconoció1010/0.1.10, API24+, target36 y arm64-v8a. Captura009. No reutilizar1010 para otro binario.
4. Escribir nombre interno `0.1.10 (1010) · Opciones y pausa táctil` y novedades es-419: volumen persistente, pausa táctil, borrado con confirmación y correcciones de texto/audio. No anunciar nuevas noches en esta actualización: ya estaban en0.1.1.
5. Pulsar **Siguiente** y revisar. Play mostró **dos advertencias**, sin errores bloqueantes: falta archivo de desofuscación y faltan símbolos nativos de depuración. Son ayudas de diagnóstico; no se inventaron ni subieron archivos de otro proyecto. Capturas011/012. Compatibilidad sin bajas:9,024teléfonos;4,941tablets;11TV;26automóvil;50Chromebook;2XR. Tamaño estimado86.7MB.
6. Mantener100% del segmento **Alpha existente** y pulsar **Guardar**. El diálogo confirmó «Se guardó tu cambio» e indicó ir al resumen para enviarlo después a revisión.
7. Pulsar **Ir al resumen**. Se verificó **Cambios que aún no se enviaron a revisión**, un cambio para0.1.10/1010, «Iniciar lanzamiento completo» en Alpha. Captura016. Comenzaron verificaciones rápidas (estimación inicial hasta14min); esto no es el envío ni una aprobación.

## 7. Punto previo a la autorización (historial de preparación)

No se pulsó **Enviar 1 cambio a revisión**. La publicación administrada está **desactivada**, comprobada directamente: si el propietario autoriza el envío y Google lo aprueba, la actualización puede activarse automáticamente para el segmento Alpha existente. No se garantiza cuándo ni si Google aprobará. No se tocó la política web, ficha, cuenta, países ni lista de verificadores.

Antes del envío: comprobar resultado de verificaciones rápidas, mostrar el resumen y obtener autorización expresa para1010. Tras enviar: registrar fecha/hora, ID, estado real y captura; añadir esos pasos a la presentación. Si queda «En revisión», no escribir «Publicado». Comprobar lanzamiento por separado cuando ocurra.

## 8. Conservación y documentación

Capturas PNG numeradas, completas y máximo1600px de ancho en `capturas`; JPG originales conservados. Índice y composición de la nueva presentación acompañan este informe. Las formas de foco son editables y están sobre las capturas, no pintadas en ellas. Referencia institucional y material anterior de Noche2 se conservaron sin cambios. El informe y la presentación reflejan el corte previo al envío y se ampliarán con el resultado real tras la autorización.


## 9. Verificaciones rápidas completadas · cierre previo al envío

Al volver a consultar el resumen, Play mostró **«Ya se pueden enviar tus cambios a revisión»**. Se guardó la captura024. Las verificaciones rápidas terminaron; continúa un único cambio pendiente de envío para Alpha0.1.10/1010. Esto no es aprobación de Google ni publicación. No se pulsó Enviar. PR #8 contiene versión y contexto; ambas comprobaciones requeridas aprobaron y la regla de main mantiene el PR bloqueado hasta autorización del propietario.


## 10. Autorización, integración y envío realizados

El propietario respondió expresamente: **«Sí, incorporar PR #8 y enviar a revisión»**, tras conocer las dos advertencias, los límites de QA y la posible activación automática de Alpha. No se volvió a pedir aprobación para esa misma acción.

1. Se comprobó PR #8 con cabeza `25c492b20f2aea1b3e1e045853782ac6e50583f2`, base main y comprobaciones requeridas aprobadas. Se fusionó con verificación de esa cabeza, por squash: `dcfffa824b09d1ecdc42e2da3258a515bb17b564`. No se cambió la protección de main. La comparación con el commit de compilación `a7bee92` sólo muestra documentación; el paquete cargado sigue siendo exactamente el AAB validado, no se recompiló ni sustituyó.
2. En Descripción general de la publicación se comprobó un único cambio para **Alpha0.1.10/1010**, verificaciones rápidas completadas y publicación administrada desactivada. Se pulsó **Enviar 1 cambio a revisión**.
3. El diálogo **«¿Confirmas que quieres enviar 1 cambio a revisión?»** avisó que Google revisaría el cambio y que el plazo puede superar siete días. Se guardó captura025 y, con la autorización expresa ya recibida, se pulsó **Envía cambios a revisión**.
4. Console pasó a **Cambios en la etapa de revisión** y ejecutó una última verificación rápida de menos de un minuto. Captura026. Este estado transitorio no se confundió con revisión terminada.
5. Se abrió **Actividad de envío**. La fila confirmó **ID3, 14nov2026, 8:35p.m., Prueba cerrada - Alpha, En revisión**. Captura027. En Ciudad de México corresponde a **20:35 del14nov2026**.
6. Se abrió **Ver detalles del envío** en esa fila. El detalle confirmó un cambio: **0.1.10 (1010) · Opciones y pausa táctil**, **Iniciar lanzamiento completo**, ID3, fuente Play Console, misma fecha y estado **En revisión**. Captura028. Enlace: https://play.google.com/console/u/0/developers/7500976678857575574/app/4976238243139466166/publishing/submission-activity/3/details

**Resultado real:** envío3 recibido y En revisión. No se observó aprobación ni publicación de0.1.10. La revisión y su plazo dependen de Google; la publicación administrada sigue desactivada, de modo que su aprobación podría activar automáticamente el segmento Alpha existente. No se modificaron cuenta, países, verificadores, ficha, política ni producción abierta.

Se conserva la presentación anterior `PREVIO_ENVIO.pptx` y se creó una entrega separada `Actualizar_Five_Nights_at_ESCOM_GameMaker_0.1.10_ENVIO_3.pptx`, con los pasos reales de confirmación y comprobación del envío. Los apartados1–9 son el historial de preparación; este apartado y el encabezado prevalecen para el estado actual. Queda comprobar aprobación y lanzamiento cuando ocurra, sin inferirlos de este envío.


## 11. Publicación comprobada directamente · 14 nov 2026

A petición del propietario («me parece que ya pasó la revisión»), se volvió a cargar el detalle del envío3. Play Console mostró **Estado: Publicado · El nov14,2026,8:42p.m.** para el único cambio de **Prueba cerrada - Alpha**, **0.1.10 (1010) · Opciones y pausa táctil**. La notificación de Console también indicó que se publicó la actualización y advirtió que la visibilidad puede tardar un poco más.

Se cerró únicamente el panel de notificaciones, sin borrar notificaciones, y se guardó la captura completa **029_envio_3_publicado.png** (máximo1600px). El registro conserva: envío3 a las20:35, publicación a las **20:42 del14nov2026**, Ciudad de México. La comprobación directa se realizó a las23:47 del mismo día. No se pulsó un botón de publicación adicional ni se cambió ningún ajuste: la publicación administrada estaba desactivada y la versión pasó de revisión a publicada.

**Resultado final:** la0.1.10/1010 ya pasó revisión y está publicada en la **prueba cerrada Alpha**. No se lanzó en producción abierta ni se ampliaron países o verificadores. No se comprobó una descarga o actualización nueva desde Play en un dispositivo después de este lanzamiento; la confirmación procede del estado Publicado de Console, no de una instalación inferida.

Se conservan las entregas PREVIO_ENVIO y ENVIO_3 como historial. Se creó una presentación separada `Actualizar_Five_Nights_at_ESCOM_GameMaker_0.1.10_PUBLICADA.pptx`, añadiendo la comprobación real de publicación. Este apartado y el encabezado sustituyen los estados previos En revisión o pendiente de envío. No cambian las pruebas realizadas ni sus límites.
