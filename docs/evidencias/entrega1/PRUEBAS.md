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

Si el tiempo alcanzó para esa parte del alcance, agreguen aquí 1-2 casos adicionales:
alcanzar la oficina sin vigilar la cámara del personaje nuevo (dispara jumpscare →
`GameOver`), y vigilarlo constantemente (no avanza). Si no alcanzó el tiempo, dejen una
nota aquí explicando que quedó para la siguiente entrega — eso no se penaliza, omitirlo sin
documentar sí.

## Hallazgos

[PENDIENTE — defectos encontrados durante las pruebas, cada uno como issue reproducible
del repositorio, enlazada aquí.]
