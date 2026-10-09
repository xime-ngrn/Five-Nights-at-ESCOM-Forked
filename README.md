# Five-Nights-at-ESCOM-Forked
Repositorio para la ejecución, modificación e implementación de una funcionalidad dentro de un proyecto anteriormente desarrollado para la entrega de una característica nueva mediante un Pull Request completo con evidencias de Quality Assurance.

---
Aplicaciones Móviles Nativas
Gabriel Hurtado Avilés
7CV4 

### Participantes
* Chávez Romero Jonathan - 2024630102
* Moreno Noguerón Ximena - 2024630201
* Reyes Castellanos José Abel - 2020311353
---

## Índice

* [`Documentacion`](/docs/)
* [`Documento explicativo de la idea`](/docs/evidencias/entrega1/IDEA.md)
* [`Documento explicativo de las pruebas`](/docs/evidencias/entrega1/PRUEBAS.md)
* [`Documento explicativo de las licencias`](/docs/LICENCIAS.md)
* [`Evidencias de ejecución para la entrega 1`](/docs/evidencias/entrega1/ENTREGA1.md)
---

## Parte 3 — Feature "Add Night 2"

Rama: `feature/night-2`. Se agrega la Noche 2 como nueva sala jugable (`N2`), con el
sistema completo de cámaras/batería/UI (reutilizado del sistema de la Noche 1) y un
personaje nuevo con una mecánica propia de vigilancia por cámara.

* **`obj_Intruso`** (Jose Abel Reyes Castellanos): personaje nuevo que empieza en la
  Cámara 1 y avanza una cámara cada 10 segundos si no se le está vigilando en ese
  instante exacto; si llega a la Cámara 8 sin haber sido detenido, dispara un jumpscare
  propio (`case 2` en `obj_GOManager`) y termina la partida.
* **Sala `N2`** (Ximena Moreno Noguerón): sistema de cámaras, batería y UI de la Noche 2,
  con `obj_PM` (enemigo de la Noche 1) también activo para aumentar la dificultad.
* **Guardado y botón "Continuar"** (Jonathan Chávez Romero): el progreso de la Noche 1
  se guarda y el menú principal permite continuar directo a la Noche 2.

Evidencias de desarrollo y QA en [`docs/evidencias/entrega1/PRUEBAS.md`](/docs/evidencias/entrega1/PRUEBAS.md).
