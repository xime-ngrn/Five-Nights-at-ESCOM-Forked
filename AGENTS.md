# Five Nights at ESCOM — trabajo autorizado

**Estado vigente: 0.1.10 (1010) PUBLICADA en la prueba cerrada Alpha. Envío ID 3: enviado el 14 nov 2026 a las 20:35 y publicado a las 20:42 (Ciudad de México), confirmado directamente en Play Console. No es producción abierta.**

## Repositorio y conservación

- Trabajar exclusivamente en el fork https://github.com/gabrielhuav/Five-Nights-at-ESCOM. `origin` debe apuntar a ese fork. No hacer push ni abrir PR contra `upstream` (autor original).
- Comprobar estado, remotos y ramas antes de modificar. Conservar cambios ajenos y créditos de Carlos Adrián Hernández Torres y colaboradores.
- Proyecto GameMaker: `Five Nights at ESCOM.yyp`. No aplicar procedimientos de compilación KMP o Flutter a este proyecto.
- Revisar `docs/publicacion/ACTUALIZACION_PLAY_STORE.md` antes de preparar la siguiente actualización.
- Conservar el formato nativo de GameMaker en `.yy`, `.yyp` y `.resource_order` (comas finales; una instancia por línea en salas). No reescribirlos con herramientas JSON. Validar con `python tools/validate_project.py`. Evitar rutas que sólo difieran en mayúsculas.

## Estado vigente · 14 de noviembre de 2026, por la noche

- **Play activo:** 0.1.10 (1010), Opciones y pausa táctil, incluye correcciones de ú/audio y lo publicado anteriormente (Noche2, Intruso, guardado y Continuar). Envío3 del14nov2026 a las20:35, **Publicado a las20:42**, confirmado directamente el14nov a las23:47 en Console. Prueba cerrada Alpha, no producción abierta.0.1.1/1001 queda como versión anterior.
- **Main:** PR #2 integrado (pausa ESC/P, apagón y atajo), PR #6 integrado por el propietario en `ae1037c` (Opciones y pausa táctil), PR #7 integrado con autorización expresa en `c267873` (CODEOWNERS). La lógica del juego coincide con `6b76378`, probado; ú y audio corregidos, sin ajuste de sincronización. La excepción para subir ese commit al fork de TheMike54 terminó; no autoriza otras escrituras en forks ajenos.
- **Protección de main:** reglas activas ID27289829. PR obligatorio, una aprobación y revisión de @gabrielhuav en todos los archivos, nueva revisión tras cambios, conversaciones resueltas, rama actualizada y checks `project-integrity` / `validate-gamemaker-project`. Bloquea borrado y push forzado. La excepción del único administrador sólo opera mediante PR; permite integrar sus propios PR con aprobación expresa del usuario, porque GitHub impide la autoaprobación.
- **Actualización publicada:** 0.1.10 (1010), commit de compilación `a7bee92`; PR #8 fusionado con autorización expresa en `dcfffa8`. AAB/APK validados y mismo paquete/firma. **Envío ID3, Alpha: Publicado el14nov2026 a las20:42**, confirmado en el detalle de Play Console (captura029). La publicación administrada estaba desactivada; se activó Alpha tras aprobación, sin nuevo clic de publicación. Ver `docs/publicacion/ACTUALIZACION_0.1.10_2026-11-14.md`.
- **Pruebas:** APK1009 final del PR6 en FiveNightsESCOM_Test; diagnóstico1008 con 33 comprobaciones de ganancia aprobadas y luego retirado. En1010: actualización sobre1009, menú, Opciones, pausa con ú y salida al menú. Capturas intermedias oscuras no certifican reanudación. El propietario aclaró que el S22+ mostraba el juego normalmente; no se usó en esta repetición. Ejecución 16 KB anterior sobre1007; para1010 sólo alineación estática. Ver `docs/pruebas-pr-6-2026-11-14.md` y límites de QA general.
- **Códigos:** 1000/1001 consumidos en Play; 1002–1009 locales; 1010 ya cargado. Nunca reutilizarlos para otro binario. Consultar el máximo de Console antes de elegir otro.
- **Contexto y entregas:** `C:\Users\gabri\Downloads\1151055 Administracion\README_PARA_IAS_PUBLICACION_GOOGLE_PLAY.md`; carpeta `Publicacion Five Nights at ESCOM\Actualizacion Opciones y Pausa 2026-11-14` con informe, capturas y PPTX nuevo. La carpeta `Actualizacion Noche 2` conserva la publicación anterior.
- **Ramas históricas:** Pages sirve la política desde `prepare/google-play-closed-test:/docs`: no borrar esa rama ni cambiar la fuente sin autorización. `prepare/android-night2-update` conserva el commit exacto de0.1.1. El destino actual del PR #5 no se comprobó en esta sesión.

## Firma y publicación

- Nunca buscar, leer, registrar, mostrar o versionar contraseñas. El propietario las introduce localmente.
- Llave de carga existente fuera del repo: `C:\Users\gabri\.android\keystores\five-nights-at-escom-upload.jks`; alias `upload-five-nights-at-escom`. No crear otra ni reutilizar llaves de otros proyectos.
- Conservar paquete `ovh.gabrielhuav.fivenightsatescom`, ícono pixel art rojo, privacidad y permisos mínimos de la preparación Android anterior.
- Comprobar el código máximo de versión en Play antes de elegir uno mayor. Los códigos 1000 y 1001 ya se utilizaron; nunca reusarlos para otra compilación.
- Pedir autorización expresa antes de cambiar de cuenta, enviar a revisión, publicar o publicar una política web. Una autorización anterior de envío no autoriza automáticamente el envío de una nueva versión. Explicar si la aprobación puede activar el lanzamiento automáticamente.
- No garantizar aprobación de Google ni presentar una versión guardada o en revisión como publicada.
- No leer ni capturar correos de estudiantes ni enviarles mensajes sin instrucción expresa. Reutilizar la lista existente26-O Y2027-1; no crear/importar otra.

## Documentación de la actualización

- El usuario solicitó una presentación nueva que documente pasos reales de actualización usando como referencia visual:
  `C:\Users\gabri\Downloads\Planeacion Didactica Android 27-1\ENTREGA_FINAL\Con_autor\Unidad_5\05_Tutorial_Publicar_en_Google_Play_KMP_Flutter_DAMN.pptx`.
- Conservar el original y otros PPTX/DOCX. Crear una presentación separada, adaptada a GameMaker y a actualizar un juego ya existente en Play.
- Mantener formato institucional, autoría, capturas completas y focos editables. Añadir acciones, comprobación y resultado real de cada paso. No simular capturas ni declarar pruebas o publicaciones no realizadas.
- Guardar capturas PNG numeradas, ancho máximo1600px e índice en la carpeta de publicación del usuario. No mostrar secretos ni correos de estudiantes.
