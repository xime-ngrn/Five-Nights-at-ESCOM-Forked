#!/usr/bin/env python3
"""Valida que todos los recursos declarados en el .yyp existan en disco.

GameMaker no puede abrir ni compilar el proyecto si falta un recurso
referenciado (room, object, sprite, sonido, etc.). Esta es la comprobacion
automatica mas util que podemos correr en CI sin una licencia de GameMaker
para compilar el juego completo (ver nota en pr-quality-gate.yml).
"""
import json
import os
import re
import sys
import glob


def load_yyp(path):
    with open(path, encoding="utf-8") as f:
        txt = f.read()
    # Los archivos .yy/.yyp de GameMaker no son JSON estricto: tienen comas
    # colgantes antes de "}" y "]". Las quitamos para poder parsear con json
    # estandar, sin depender de un paquete externo.
    clean = re.sub(r",(\s*[}\]])", r"\1", txt)
    return json.loads(clean)


def main():
    yyp_candidates = glob.glob("*.yyp")
    if not yyp_candidates:
        print("::error::No se encontro ningun archivo .yyp en la raiz del repo.")
        sys.exit(1)
    yyp_path = yyp_candidates[0]
    print(f"Validando {yyp_path}...")

    data = load_yyp(yyp_path)
    resources = data.get("resources", [])
    missing = []
    for resource in resources:
        rel_path = resource["id"]["path"]
        if not os.path.isfile(rel_path):
            missing.append(rel_path)

    if missing:
        print(f"::error::{len(missing)} recurso(s) referenciado(s) en el .yyp no existen en disco:")
        for m in missing:
            print(f"  - {m}")
        print("Esto suele pasar tras un merge incompleto, o al borrar una carpeta")
        print("sin quitar su referencia del .yyp. El proyecto probablemente no abre")
        print("en GameMaker en este estado.")
        sys.exit(1)

    print(f"OK: los {len(resources)} recursos declarados en {yyp_path} existen en disco.")


if __name__ == "__main__":
    main()
