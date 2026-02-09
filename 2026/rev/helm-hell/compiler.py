#!/usr/bin/env python3
"""
Brainfuck to Helm Chart Compiler

Compiles Brainfuck programs into Helm charts that execute the program
when rendered with `helm template`.

Usage: python compiler.py input.bf [output_dir]
"""

import sys
import os
import random


def parse_bf(source: str) -> list[str]:
    """Extract valid BF operations from source."""
    valid_ops = set('><+-.,[]')
    return [c for c in source if c in valid_ops]


def validate_brackets(ops: list[str]) -> bool:
    """Ensure brackets are balanced."""
    depth = 0
    for op in ops:
        if op == '[':
            depth += 1
        elif op == ']':
            depth -= 1
            if depth < 0:
                return False
    return depth == 0


# Nautical/Kubernetes themed name components for obfuscation
NAUTICAL_PREFIXES = [
    "helm", "sail", "anchor", "port", "stern", "bow", "mast", "deck", "hull",
    "keel", "rudder", "captain", "crew", "voyage", "chart", "compass", "tide",
    "wave", "current", "depth", "beacon", "harbor", "dock", "berth", "cargo",
    "fleet", "galley", "hatch", "knot", "league", "nautical", "reef", "rigging",
    "starboard", "vessel", "windward", "buoy", "marina", "mooring", "ballast"
]

K8S_PREFIXES = [
    "pod", "node", "cluster", "replica", "deploy", "service", "ingress", "config",
    "secret", "volume", "namespace", "container", "image", "label", "selector",
    "endpoint", "controller", "scheduler", "kubelet", "etcd", "manifest", "spec",
    "template", "release", "revision", "rollout", "probe", "resource", "quota",
    "limit", "request", "affinity", "taint", "toleration", "daemon", "stateful",
    "cron", "job", "batch", "operator", "webhook", "admission", "api", "gateway"
]

NAUTICAL_SUFFIXES = [
    "Sea", "Ocean", "Bay", "Cove", "Inlet", "Channel", "Strait", "Gulf",
    "Wave", "Tide", "Current", "Drift", "Flow", "Surge", "Swell", "Ebb",
    "Depth", "Fathom", "League", "Mile", "Knot", "Speed", "Course", "Heading",
    "Log", "Chart", "Map", "Route", "Path", "Track", "Trail", "Way"
]

K8S_SUFFIXES = [
    "Config", "Spec", "Status", "Meta", "Data", "Info", "State", "Cache",
    "Store", "Pool", "Queue", "Stack", "Heap", "Buffer", "Stream", "Pipe",
    "Handler", "Manager", "Controller", "Worker", "Runner", "Executor", "Agent",
    "Sync", "Async", "Batch", "Event", "Signal", "Watch", "Hook", "Trigger"
]

# Themed names for core state variables
STATE_NAMES = {
    "tape": ["sea", "ocean", "waters", "depths", "abyss", "expanse", "realm"],
    "ptr": ["helm", "rudder", "compass", "bearing", "heading", "course", "nav"],
    "output": ["cargo", "manifest", "payload", "freight", "shipment", "haul", "catch"],
    "input": ["provisions", "supplies", "stores", "rations", "intake", "feed", "source"],
    "inIdx": ["logbook", "journal", "ledger", "tally", "count", "mark", "tick"]
}

# Global counter for unique template names
_name_counter = 0


def rand_themed_name(length=None):
    global _name_counter
    _name_counter += 1
    """Generate a nautical/k8s themed variable name."""
    if random.random() < 0.5:
        prefix = random.choice(NAUTICAL_PREFIXES)
        suffix = random.choice(NAUTICAL_SUFFIXES)
    else:
        prefix = random.choice(K8S_PREFIXES)
        suffix = random.choice(K8S_SUFFIXES)

    # Always add unique counter suffix
    return f"{prefix}{suffix}{_name_counter}"


def rand_name(length=None):
    """Generate a themed template/variable name."""
    return rand_themed_name(length)


def get_state_var(var_type):
    """Get a themed name for a state variable."""
    return random.choice(STATE_NAMES.get(var_type, ["data"]))


def rand_int():
    """Generate a random integer for obfuscation."""
    return random.randint(1, 9999)


def gen_noop_statements():
    """Generate random no-op Helm statements that do nothing useful."""
    noops = []
    num_noops = random.randint(1, 4)

    for _ in range(num_noops):
        noop_type = random.randint(0, 14)
        v1 = rand_name()
        v2 = rand_name()
        n1 = rand_int()
        n2 = rand_int()

        if noop_type == 0:
            # Assign a constant to unused variable
            noops.append(f'{{{{- ${v1} := {n1} -}}}}')
        elif noop_type == 1:
            # Compute something and discard
            noops.append(f'{{{{- ${v1} := add {n1} {n2} -}}}}')
        elif noop_type == 2:
            # Multiply and discard
            noops.append(f'{{{{- ${v1} := mul {n1} {n2} -}}}}')
        elif noop_type == 3:
            # Nested math
            noops.append(f'{{{{- ${v1} := sub (mul {n1} {n2}) (add {n1} {n2}) -}}}}')
        elif noop_type == 4:
            # Conditional that always evaluates one way
            noops.append(f'{{{{- if gt {n1 + 1000} {n1} -}}}}{{{{- ${v1} := {n2} -}}}}{{{{- end -}}}}')
        elif noop_type == 5:
            # Empty string operations
            noops.append(f'{{{{- ${v1} := printf "%s" "" -}}}}')
        elif noop_type == 6:
            # Default with guaranteed value
            noops.append(f'{{{{- ${v1} := default {n1} {n2} -}}}}')
        elif noop_type == 7:
            # Ternary that always picks first
            noops.append(f'{{{{- ${v1} := ternary {n1} {n2} true -}}}}')
        elif noop_type == 8:
            # Modulo operation
            noops.append(f'{{{{- ${v1} := mod {n1} 256 -}}}}')
        elif noop_type == 9:
            # Length of empty
            noops.append(f'{{{{- ${v1} := len "" -}}}}')
        elif noop_type == 10:
            # Nested ternary
            noops.append(f'{{{{- ${v1} := ternary (add {n1} 1) (sub {n2} 1) (gt {n1} 0) -}}}}')
        elif noop_type == 11:
            # Double negation style referencing helm/rudder
            noops.append(f'{{{{- ${v1} := sub (add $helm {n1}) {n1} -}}}}')
        elif noop_type == 12:
            # Redundant printf
            noops.append(f'{{{{- ${v1} := printf "%d" {n1} -}}}}')
        elif noop_type == 13:
            # Nautical-themed depth check on sea
            noops.append(f'{{{{- ${v1} := len $sea -}}}}{{{{- ${v2} := add ${v1} {n1} -}}}}')
        elif noop_type == 14:
            # Check cargo length
            noops.append(f'{{{{- ${v1} := len $cargo -}}}}')

    return '\n'.join(noops)


def gen_dead_code_block():
    """Generate a dead code block that never executes."""
    v1 = rand_name()
    v2 = rand_name()
    n1 = rand_int()
    n2 = rand_int()

    templates = [
        f'{{{{- if eq 1 0 -}}}}{{{{- ${v1} := {n1} -}}}}{{{{- ${v2} := add ${v1} {n2} -}}}}{{{{- end -}}}}',
        f'{{{{- if gt 0 1 -}}}}{{{{- ${v1} := mul {n1} {n2} -}}}}{{{{- end -}}}}',
        f'{{{{- if and false true -}}}}{{{{- ${v1} := {n1} -}}}}{{{{- end -}}}}',
        f'{{{{- if not true -}}}}{{{{- ${v1} := sub {n2} {n1} -}}}}{{{{- end -}}}}',
    ]
    return random.choice(templates)


def gen_redundant_computation():
    """Generate computations that look meaningful but don't affect state."""
    v1 = rand_name()
    v2 = rand_name()
    n1 = rand_int()

    templates = [
        # Compute based on helm (pointer) but don't use result
        f'{{{{- ${v1} := add $helm {n1} -}}}}{{{{- ${v2} := sub ${v1} {n1} -}}}}',
        # Read from sea (tape) to unused var
        f'{{{{- ${v1} := printf "%d" $helm -}}}}{{{{- ${v2} := default 0 (index $sea ${v1}) -}}}}',
        # String manipulation that goes nowhere
        f'{{{{- ${v1} := printf "%d%d" $helm $logbook -}}}}',
        # Length computations on cargo (output)
        f'{{{{- ${v1} := len $cargo -}}}}{{{{- ${v2} := add ${v1} {n1} -}}}}',
        # Check depth of waters
        f'{{{{- ${v1} := len $sea -}}}}{{{{- ${v2} := mul ${v1} {n1} -}}}}',
        # Provisions check
        f'{{{{- ${v1} := len $provisions -}}}}',
    ]
    return random.choice(templates)


def maybe_add_obfuscation(code_lines, probability=0.4):
    return
    """Maybe add obfuscation statements."""
    if random.random() < probability:
        code_lines.append(gen_noop_statements())
    if random.random() < probability * 0.5:
        code_lines.append(gen_dead_code_block())
    if random.random() < probability * 0.3:
        code_lines.append(gen_redundant_computation())


def obfuscate_ptr_inc():
    """Generate obfuscated pointer increment (navigate starboard)."""
    style = random.randint(0, 4)
    if style == 0:
        return f'{{{{- $helm = add $helm 1 -}}}}'
    elif style == 1:
        v = rand_name()
        return f'{{{{- ${v} := 1 -}}}}{{{{- $helm = add $helm ${v} -}}}}'
    elif style == 2:
        n = rand_int()
        return f'{{{{- $helm = sub (add $helm {n + 1}) {n} -}}}}'
    elif style == 3:
        return f'{{{{- $helm = add $helm (sub 2 1) -}}}}'
    else:
        v = rand_name()
        return f'{{{{- ${v} := ternary 1 0 true -}}}}{{{{- $helm = add $helm ${v} -}}}}'


def obfuscate_ptr_dec():
    """Generate obfuscated pointer decrement (navigate port)."""
    style = random.randint(0, 4)
    if style == 0:
        return f'{{{{- $helm = sub $helm 1 -}}}}'
    elif style == 1:
        v = rand_name()
        return f'{{{{- ${v} := 1 -}}}}{{{{- $helm = sub $helm ${v} -}}}}'
    elif style == 2:
        n = rand_int()
        return f'{{{{- $helm = add (sub $helm {n + 1}) {n} -}}}}'
    elif style == 3:
        return f'{{{{- $helm = sub $helm (add 0 1) -}}}}'
    else:
        v = rand_name()
        return f'{{{{- ${v} := ternary 1 0 true -}}}}{{{{- $helm = sub $helm ${v} -}}}}'


def obfuscate_cell_inc():
    """Generate obfuscated cell increment (raise tide)."""
    k = rand_name()
    v = rand_name()
    t = rand_name()

    style = random.randint(0, 2)
    if style == 0:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- $_ := set $sea ${k} (mod (add ${v} 1) 256) -}}}}'''
    elif style == 1:
        n = rand_int() % 255 + 1
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- ${t} := add ${v} {n + 1} -}}}}
{{{{- ${t} = sub ${t} {n} -}}}}
{{{{- $_ := set $sea ${k} (mod ${t} 256) -}}}}'''
    else:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- ${t} := ternary 1 0 true -}}}}
{{{{- $_ := set $sea ${k} (mod (add ${v} ${t}) 256) -}}}}'''


def obfuscate_cell_dec():
    """Generate obfuscated cell decrement (lower tide)."""
    k = rand_name()
    v = rand_name()
    t = rand_name()

    style = random.randint(0, 2)
    if style == 0:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- $_ := set $sea ${k} (mod (add (sub ${v} 1) 256) 256) -}}}}'''
    elif style == 1:
        n = rand_int() % 255 + 1
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- ${t} := sub ${v} {n + 1} -}}}}
{{{{- ${t} = add ${t} {n} -}}}}
{{{{- $_ := set $sea ${k} (mod (add ${t} 256) 256) -}}}}'''
    else:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- ${t} := ternary 1 0 true -}}}}
{{{{- $_ := set $sea ${k} (mod (add (sub ${v} ${t}) 256) 256) -}}}}'''


def obfuscate_output():
    """Generate obfuscated output operation (load cargo)."""
    k = rand_name()
    v = rand_name()
    t = rand_name()

    style = random.randint(0, 2)
    if style == 0:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- $cargo = printf "%s%c" $cargo ${v} -}}}}'''
    elif style == 1:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${v} := default 0 (index $sea ${k}) -}}}}
{{{{- ${t} := printf "%c" ${v} -}}}}
{{{{- $cargo = printf "%s%s" $cargo ${t} -}}}}'''
    else:
        return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${t} := default 0 (index $sea ${k}) -}}}}
{{{{- ${v} := ${t} -}}}}
{{{{- $cargo = printf "%s%c" $cargo ${v} -}}}}'''


def obfuscate_input():
    """Generate obfuscated input operation (unload provisions)."""
    k = rand_name()
    c = rand_name()
    t = rand_name()

    return f'''{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- if lt $logbook (len $provisions) -}}}}
{{{{- ${c} := index $provisions $logbook -}}}}
{{{{- ${t} := int (printf "%d" ${c}) -}}}}
{{{{- $_ := set $sea ${k} ${t} -}}}}
{{{{- $logbook = add $logbook 1 -}}}}
{{{{- end -}}}}'''


def generate_chart_yaml() -> str:
    """Generate Chart.yaml content."""
    return """apiVersion: v2
name: helm-program
version: 0.1.0
"""


def generate_values_yaml() -> str:
    """Generate values.yaml content."""
    return """input: ""
"""


def find_matching_bracket(ops: list[str], start: int) -> int:
    """Find the matching ] for a [ at position start."""
    depth = 1
    pos = start + 1
    while pos < len(ops) and depth > 0:
        if ops[pos] == '[':
            depth += 1
        elif ops[pos] == ']':
            depth -= 1
        pos += 1
    return pos - 1


def compile_block(ops: list[str], start: int, end: int, template_names: dict, all_templates: list) -> str:
    """
    Compile a block of BF instructions into Helm template code.
    Returns the code that should be placed inline.
    """
    code_lines = []
    i = start

    # Maybe add initial obfuscation
    maybe_add_obfuscation(code_lines, 0.3)

    while i <= end:
        op = ops[i]

        # Random chance to add obfuscation before each op
        maybe_add_obfuscation(code_lines, 0.25)

        if op == '>':
            code_lines.append(obfuscate_ptr_inc())

        elif op == '<':
            code_lines.append(obfuscate_ptr_dec())

        elif op == '+':
            code_lines.append(obfuscate_cell_inc())

        elif op == '-':
            code_lines.append(obfuscate_cell_dec())

        elif op == '.':
            code_lines.append(obfuscate_output())

        elif op == ',':
            code_lines.append(obfuscate_input())

        elif op == '[':
            # Loop start - find matching bracket and create a template for the loop
            match_pos = find_matching_bracket(ops, i)
            loop_name = template_names[(i, match_pos)]

            # Generate the loop body as a separate template
            loop_body = compile_block(ops, i + 1, match_pos - 1, template_names, all_templates)

            # Random variable names for the loop template (nautical themed)
            cv = rand_name()
            k = rand_name()
            nxt = rand_name()

            # Extra obfuscation vars
            ob1 = rand_name()
            ob2 = rand_name()
            obn = rand_int()

            # Create the loop template with recursion and extra obfuscation
            loop_template = f'''{{{{- define "{loop_name}" -}}}}
{{{{- $sea := .sea -}}}}
{{{{- $helm := .helm -}}}}
{{{{- $cargo := .cargo -}}}}
{{{{- $provisions := .provisions -}}}}
{{{{- $logbook := .logbook -}}}}
{{{{- ${ob1} := {obn} -}}}}
{{{{- ${k} := printf "%d" $helm -}}}}
{{{{- ${cv} := default 0 (index $sea ${k}) -}}}}
{{{{- ${ob2} := add ${ob1} $helm -}}}}
{{{{- if ne ${cv} 0 -}}}}
{loop_body}
{{{{- ${nxt} := dict "sea" $sea "helm" $helm "cargo" $cargo "provisions" $provisions "logbook" $logbook -}}}}
{{{{- include "{loop_name}" ${nxt} -}}}}
{{{{- $_ := set . "sea" ${nxt}.sea -}}}}
{{{{- $_ := set . "helm" ${nxt}.helm -}}}}
{{{{- $_ := set . "cargo" ${nxt}.cargo -}}}}
{{{{- $_ := set . "logbook" ${nxt}.logbook -}}}}
{{{{- end -}}}}
{{{{- end -}}}}'''

            all_templates.append(loop_template)

            # Inline code to call the loop with obfuscation
            lp = rand_name()
            #code_lines.append(gen_noop_statements())
            code_lines.append(f'{{{{- ${lp} := dict "sea" $sea "helm" $helm "cargo" $cargo "provisions" $provisions "logbook" $logbook -}}}}')
            code_lines.append(f'{{{{- include "{loop_name}" ${lp} -}}}}')
            code_lines.append(f'{{{{- $sea = ${lp}.sea -}}}}')
            code_lines.append(f'{{{{- $helm = ${lp}.helm -}}}}')
            code_lines.append(f'{{{{- $cargo = ${lp}.cargo -}}}}')
            code_lines.append(f'{{{{- $logbook = ${lp}.logbook -}}}}')
            #code_lines.append(gen_noop_statements())

            # Skip to after the matching bracket
            i = match_pos

        elif op == ']':
            # This should not happen in normal flow since we handle loops above
            pass

        i += 1

    # Maybe add trailing obfuscation
    maybe_add_obfuscation(code_lines, 0.3)

    return '\n'.join(code_lines)


def generate_decoy_template():
    """Generate a decoy template that's never called."""
    name = rand_name()
    v1 = rand_name()
    v2 = rand_name()
    v3 = rand_name()
    n1 = rand_int()
    n2 = rand_int()

    # Various nautical-themed decoy patterns
    templates = [
        f'''{{{{- define "{name}" -}}}}
{{{{- ${v1} := .sea -}}}}
{{{{- ${v2} := add .helm {n1} -}}}}
{{{{- ${v3} := sub ${v2} {n2} -}}}}
{{{{- if gt ${v3} 0 -}}}}
{{{{- $_ := set ${v1} (printf "%d" ${v3}) ${v2} -}}}}
{{{{- end -}}}}
{{{{- end -}}}}''',
        f'''{{{{- define "{name}" -}}}}
{{{{- ${v1} := len .cargo -}}}}
{{{{- ${v2} := mul ${v1} {n1} -}}}}
{{{{- ${v3} := mod ${v2} 256 -}}}}
{{{{- printf "%d" ${v3} -}}}}
{{{{- end -}}}}''',
        f'''{{{{- define "{name}" -}}}}
{{{{- ${v1} := .provisions -}}}}
{{{{- ${v2} := .logbook -}}}}
{{{{- if lt ${v2} (len ${v1}) -}}}}
{{{{- ${v3} := index ${v1} ${v2} -}}}}
{{{{- printf "%c" ${v3} -}}}}
{{{{- end -}}}}
{{{{- end -}}}}''',
        f'''{{{{- define "{name}" -}}}}
{{{{- ${v1} := default 0 .helm -}}}}
{{{{- range $i := until {n1 % 10 + 1} -}}}}
{{{{- ${v1} = add ${v1} 1 -}}}}
{{{{- end -}}}}
{{{{- ${v1} -}}}}
{{{{- end -}}}}''',
    ]
    return random.choice(templates)


def generate_helpers_tpl(ops: list[str]) -> str:
    """Generate _helpers.tpl with compiled code for each instruction."""

    # First pass: assign random names to all loop pairs
    template_names = {}
    stack = []
    for i, op in enumerate(ops):
        if op == '[':
            stack.append(i)
        elif op == ']':
            if stack:
                open_pos = stack.pop()
                name = rand_name()
                template_names[(open_pos, i)] = name

    # Second pass: compile the code
    all_templates = []

    # Add some decoy templates
    for _ in range(random.randint(2, 5)):
        all_templates.append(generate_decoy_template())

    # Generate the main execution template (the voyage)
    main_body = compile_block(ops, 0, len(ops) - 1, template_names, all_templates)

    main_name = rand_name()
    ob1 = rand_name()
    ob2 = rand_name()
    obn = rand_int()

    main_template = f'''{{{{- define "{main_name}" -}}}}
{{{{- $sea := .sea -}}}}
{{{{- $helm := .helm -}}}}
{{{{- $cargo := .cargo -}}}}
{{{{- $provisions := .provisions -}}}}
{{{{- $logbook := .logbook -}}}}
{{{{- ${ob1} := {obn} -}}}}
{{{{- ${ob2} := add ${ob1} 1 -}}}}
{main_body}
{{{{- $_ := set . "cargo" $cargo -}}}}
{{{{- $_ := set . "sea" $sea -}}}}
{{{{- $_ := set . "helm" $helm -}}}}
{{{{- $_ := set . "logbook" $logbook -}}}}
{{{{- end -}}}}'''

    all_templates.append(main_template)

    # Add more decoy templates
    for _ in range(random.randint(2, 5)):
        all_templates.append(generate_decoy_template())

    # Shuffle templates to further obfuscate
    random.shuffle(all_templates)

    # Add the entry point that references main (set sail)
    entry_name = rand_name()
    st = rand_name()
    ob = rand_name()
    obn2 = rand_int()

    entry_template = f'''{{{{- define "{entry_name}" -}}}}
{{{{- ${ob} := {obn2} -}}}}
{{{{- ${st} := dict "sea" (dict) "helm" 0 "cargo" "" "provisions" (default "" .Values.input) "logbook" 0 -}}}}
{{{{- include "{main_name}" ${st} -}}}}
{{{{- ${st}.cargo -}}}}
{{{{- end -}}}}'''

    all_templates.append(entry_template)

    # Store entry name for output.yaml to reference
    return '\n\n'.join(all_templates), entry_name


def generate_output_yaml(entry_name: str) -> str:
    """Generate output.yaml template."""
    return f'''apiVersion: v1
kind: ConfigMap
metadata:
  name: output
data:
  result: {{{{- include "{entry_name}" . | quote }}}}
'''


def compile_bf_to_helm(input_file: str, output_dir: str):
    """Main compilation function."""
    # Read source file
    with open(input_file, 'r') as f:
        source = f.read()

    # Parse BF operations
    ops = parse_bf(source)

    # Validate brackets
    if not validate_brackets(ops):
        print("Error: Unbalanced brackets in program", file=sys.stderr)
        sys.exit(1)

    # Create directory structure
    templates_dir = os.path.join(output_dir, 'templates')
    os.makedirs(templates_dir, exist_ok=True)

    # Generate helpers and get entry point name
    helpers_content, entry_name = generate_helpers_tpl(ops)

    # Generate and write files
    files = {
        os.path.join(output_dir, 'Chart.yaml'): generate_chart_yaml(),
        os.path.join(output_dir, 'values.yaml'): generate_values_yaml(),
        os.path.join(templates_dir, '_helpers.tpl'): helpers_content,
        os.path.join(templates_dir, 'output.yaml'): generate_output_yaml(entry_name),
    }

    for path, content in files.items():
        with open(path, 'w') as f:
            f.write(content)

    print(f"Compiled {len(ops)} operations to Helm chart")
    print(f"Output directory: {output_dir}/")
    print(f"")
    print(f"To run:")
    print(f"  helm template {output_dir}")


def main():
    if len(sys.argv) < 2:
        print("Helm Chart Compiler")
        print("")
        print("Usage: python compiler.py input.bf [output_dir]")
        print("")
        print("Arguments:")
        print("  input.bf    - Source file")
        print("  output_dir  - Output directory for Helm chart (default: bf_chart)")
        sys.exit(1)

    input_file = sys.argv[1]
    output_dir = sys.argv[2] if len(sys.argv) > 2 else "bf_chart"

    if not os.path.exists(input_file):
        print(f"Error: Input file '{input_file}' not found", file=sys.stderr)
        sys.exit(1)

    compile_bf_to_helm(input_file, output_dir)


if __name__ == "__main__":
    main()
