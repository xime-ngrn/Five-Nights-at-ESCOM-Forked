# Pruebas — Parte 3: "Add Night 2"

Matriz de QA para la característica `feature/night-2` (issue a enlazar cuando Ximena la
abra). Casos ejecutados sobre un build local (GameMaker no compila en CI para esta ruta,
ver nota en `.github/workflows/pr-quality-gate.yml`).

**SHA base:** `7ab6b0399ff609349ae73159be7901c03eb799ae`
**SHA probado:** [PENDIENTE — `git log -1 --format=%H` en `feature/night-2` al momento de probar]
**Dispositivo/entorno:** [PENDIENTE — ej. GameMaker Runtime X.X, Android API NN, o emulador/dispositivo usado]

| ID | Tipo | Autor / fecha | Precondiciones | Pasos | Esperado | Real | Estado | Evidencia |
|----|------|----------------|-----------------|-------|----------|------|--------|-----------|
| RF-01 | Ruta feliz | [Nombre] / [fecha] | Partida con Noche 1 recién superada | 1. Ganar Noche 1. 2. Volver al menú. 3. Tocar "Continuar". | El botón está habilitado y lleva directo a la Noche 2 (`room N2`), no a Noche 1. | [PENDIENTE] | [PENDIENTE] | [capturas antes/después] |
| LIM-02 | Límite / alterno | [Nombre] / [fecha] | Partida nueva, sin ninguna noche superada (`save.ini` inexistente o en 0) | 1. Abrir el menú principal sin haber jugado antes. | El botón "Continuar" se muestra deshabilitado (opacidad reducida) y no reacciona al toque. | [PENDIENTE] | [PENDIENTE] | [captura] |
| REG-03 | Regresión | [Nombre] / [fecha] | Build con los cambios de Noche 2 aplicados | 1. Iniciar "Nueva partida" (no Continuar). 2. Jugar la Noche 1 normalmente hasta perder o ganar. | La Noche 1 se comporta igual que antes del cambio: batería, cámaras y personajes PM sin alterar. | [PENDIENTE] | [PENDIENTE] | [captura/video] |
| NAV-04 | Navegación / estado | [Nombre] / [fecha] | Noche 1 recién superada (progreso guardado) | 1. Ganar Noche 1. 2. Cerrar la app por completo. 3. Reabrir la app. 4. Tocar "Continuar". | El progreso persiste tras cerrar la app: "Continuar" sigue habilitado y lleva a Noche 2. | [PENDIENTE] | [PENDIENTE] | [captura] |
| A11Y-05 | Accesibilidad | [Nombre] / [fecha] | Menú principal visible | 1. Medir el área táctil del botón "Continuar" en ambos estados. 2. Verificar contraste del estado deshabilitado contra el fondo. | El botón mantiene un área táctil ≥ al resto de los botones del menú; el estado deshabilitado es distinguible pero legible (no desaparece). | [PENDIENTE] | [PENDIENTE] | [captura] |
| COMPAT-06 | Entorno / compatibilidad | [Nombre] / [fecha] | — | Registrar versión de GameMaker Runtime, dispositivo/emulador y SO usados para correr el build. | Build corre sin errores de compilación ni crashes al cargar `N2` o `GameOver`. | [PENDIENTE] | [PENDIENTE] | — |

## Estado de la Noche 2 (personaje nuevo + jumpscare)

Implementado por Jose Abel Reyes Castellanos: `obj_Intruso` (mecánica de vigilancia de
cámara) y el `case 2` correspondiente en `obj_GOManager` (Crear, Alarma 0, Alarma 1) para
su jumpscare. Evidencia del desarrollo (código agregado y colocación en la sala `N2`):

![Instancia de obj_Intruso colocada en la sala N2](night2-01-room-n2-intruso-colocado.png)

*`obj_Intruso` colocado en la sala N2, junto al enemigo existente de la Noche 1.*

![case 2 agregado al evento Crear de obj_GOManager](night2-02-gomanager-crear-case2.png)

*Evento Crear de `obj_GOManager`, ya convertido a código, con el `case 2` nuevo junto al
`case 1` original (sin modificar).*

![case 2 agregado a Alarma 0 de obj_GOManager](night2-03-gomanager-alarma0-case2.png)

*Alarma 0 de `obj_GOManager` con el `case 2` nuevo.*

![case 2 agregado a Alarma 1 de obj_GOManager](night2-04-gomanager-alarma1-case2.png)

*Alarma 1 de `obj_GOManager` con el `case 2` nuevo.*

**Pendiente:** correr la prueba de juego completa (alcanzar el Game Over sin vigilar la
cámara de `obj_Intruso`, y verificar que vigilarla constantemente evita que avance) y
documentar el resultado en la tabla de arriba — esto quedó para completarse antes de pasar
el PR a "Ready for review".

## Hallazgos

[PENDIENTE — defectos encontrados durante las pruebas, cada uno como issue reproducible
del repositorio, enlazada aquí.]
