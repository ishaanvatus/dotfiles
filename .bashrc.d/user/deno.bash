_deno() {
    local i cur prev opts cmds
    COMPREPLY=()
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    cmd=""
    opts=""

    for i in ${COMP_WORDS[@]}
    do
        case "${cmd},${i}" in
            ",${COMP_WORDS[0]}")
                cmd="deno"
                ;;
            "deno,run")\n                cmd="deno__run"
                ;;
            "deno,watch")\n                cmd="deno__watch"
                ;;
            "deno,serve")\n                cmd="deno__serve"
                ;;
            "deno,eval")\n                cmd="deno__eval"
                ;;
            "deno,fmt")\n                cmd="deno__fmt"
                ;;
            "deno,lint")\n                cmd="deno__lint"
                ;;
            "deno,test")\n                cmd="deno__test"
                ;;
            "deno,upgrade")\n                cmd="deno__upgrade"
                ;;
            "deno,cache")\n                cmd="deno__cache"
                ;;
            "deno,check")\n                cmd="deno__check"
                ;;
            "deno,info")\n                cmd="deno__info"
                ;;
            "deno,doc")\n                cmd="deno__doc"
                ;;
            "deno,task")\n                cmd="deno__task"
                ;;
            "deno,bench")\n                cmd="deno__bench"
                ;;
            "deno,compile")\n                cmd="deno__compile"
                ;;
            "deno,coverage")\n                cmd="deno__coverage"
                ;;
            "deno,repl")\n                cmd="deno__repl"
                ;;
            "deno,install")\n                cmd="deno__install"
                ;;
            "deno,uninstall")\n                cmd="deno__uninstall"
                ;;
            "deno,types")\n                cmd="deno__types"
                ;;
            "deno,completions")\n                cmd="deno__completions"
                ;;
            "deno,init")\n                cmd="deno__init"
                ;;
            "deno,create")\n                cmd="deno__create"
                ;;
            "deno,jupyter")\n                cmd="deno__jupyter"
                ;;
            "deno,publish")\n                cmd="deno__publish"
                ;;
            "deno,add")\n                cmd="deno__add"
                ;;
            "deno,remove")\n                cmd="deno__remove"
                ;;
            "deno,outdated")\n                cmd="deno__outdated"
                ;;
            "deno,update")\n                cmd="deno__update"
                ;;
            "deno,deploy")\n                cmd="deno__deploy"
                ;;
            "deno,sandbox")\n                cmd="deno__sandbox"
                ;;
            "deno,clean")\n                cmd="deno__clean"
                ;;
            "deno,list")\n                cmd="deno__list"
                ;;
            "deno,link")\n                cmd="deno__link"
                ;;
            "deno,unlink")\n                cmd="deno__unlink"
                ;;
            "deno,approve-scripts")\n                cmd="deno__approve__scripts"
                ;;
            "deno,lsp")\n                cmd="deno__lsp"
                ;;
            "deno,vendor")\n                cmd="deno__vendor"
                ;;
            "deno,bundle")\n                cmd="deno__bundle"
                ;;
            "deno,audit")\n                cmd="deno__audit"
                ;;
            "deno,why")\n                cmd="deno__why"
                ;;
            "deno,transpile")\n                cmd="deno__transpile"
                ;;
            "deno,bump-version")\n                cmd="deno__bump__version"
                ;;
            "deno,ci")\n                cmd="deno__ci"
                ;;
            "deno,desktop")\n                cmd="deno__desktop"
                ;;
            "deno,pack")\n                cmd="deno__pack"
                ;;
            "deno,x")\n                cmd="deno__x"
                ;;
            "deno,json_reference")\n                cmd="deno__json_reference"
                ;;
            "deno,help")\n                cmd="deno__help"
                ;;
            *)\n                ;;
        esac
    done

    case "${cmd}" in
        deno)
            opts="run watch serve eval fmt lint test upgrade cache check info doc task bench compile coverage repl install uninstall types completions init create jupyter publish add remove outdated update deploy sandbox clean list link unlink approve-scripts lsp vendor bundle audit why transpile bump-version ci desktop pack x json_reference help --env-file --help --version --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__run)
            opts="--check --watch --hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --coverage --use-env-proxy --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__watch)
            opts="--check --watch --hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --coverage --use-env-proxy --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__serve)
            opts="--port --host --open --parallel --check --watch --watch-hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__eval)
            opts="--print --ext --env-file --check --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__fmt)
            opts="--check --fail-fast --permit-no-files --watch --watch-exclude --no-clear-screen --ext --ignore --use-tabs --line-width --indent-width --single-quote --prose-wrap --no-semicolons --config --no-config --no-editorconfig --unstable-component --unstable-sql"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__lint)
            opts="--rules --fix --rules-tags --rules-include --rules-exclude --json --compact --ignore --watch --watch-exclude --no-clear-screen --permit-no-files --config --no-config --ext --allow-import --deny-import"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__test)
            opts="--doc --no-run --coverage --clean --fail-fast --filter --shuffle --parallel --sanitize-ops --sanitize-resources --coverage-threshold --update-snapshots --watch --watch-exclude --no-clear-screen --reporter --junit-path --hide-stacktraces --retry --repeats --shard --changed --related --coverage-raw-data-only --ignore --env-file --permit-no-files --ext --check --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__upgrade)
            opts="--dry-run --force --canary --release-candidate --version --output --cert --unsafely-ignore-certificate-errors --pr --checksum --branch --no-delta"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__cache)
            opts="--check --ext --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-import --deny-import --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__check)
            opts="--all --doc --doc-only --desktop --no-code-cache --watch --watch-exclude --no-clear-screen --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --cached-only --location --v8-flags --seed --preload --require --conditions --allow-import --deny-import"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__info)
            opts="--json --location --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --allow-import --deny-import"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__doc)
            opts="--json --private --lint --html --name --output --category-docs --symbol-redirect-map --default-symbol-map --strip-trailing-html --filter --builtin --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --allow-import --deny-import"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__task)
            opts="--cwd --config --recursive --members --filter --eval --if-present --no-prefix --jobs --env-file --node-modules-dir --lock --no-lock --frozen-lockfile"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bench)
            opts="--filter --json --no-run --permit-no-files --watch --watch-exclude --no-clear-screen --ignore --env-file --check --ext --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__compile)
            opts="--output --target --engine --no-terminal --icon --include --exclude --env-file --no-code-cache --ext --self-extracting --bundle --minify --app-name --exclude-unused-npm --check --watch --watch-exclude --no-clear-screen --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__coverage)
            opts="--ignore --include --exclude --lcov --html --detailed --threshold --output"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__repl)
            opts="--eval --eval-file --json --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__install)
            opts="--global --name --root --force --dev --save-optional --no-save --prod --skip-types --entrypoint --compile --lockfile-only --npm --jsr --save-exact --unscoped --package-json --os --arch --env-file --check --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__uninstall)
            opts="--global --root --lockfile-only --package-json --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__types)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__completions)
            opts="--dynamic"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__init)
            opts="--lib --serve --npm --jsr --empty --yes"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__create)
            opts="--npm --jsr --yes"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__jupyter)
            opts="--install --name --display --kernel --conn --force"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__publish)
            opts="--token --dry-run --allow-slow-types --allow-dirty --no-provenance --set-version --check --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__add)
            opts="--dev --save-optional --no-save --save-exact --unscoped --npm --jsr --lockfile-only --allow-import --deny-import --package-json --env-file --allow-scripts --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__remove)
            opts="--global --root --lockfile-only --package-json --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__outdated)
            opts="--recursive --compatible --update --latest --interactive --lockfile-only --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__update)
            opts="--recursive --latest --compatible --lockfile-only --interactive --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__deploy)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__sandbox)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__clean)
            opts="--except --dry-run --node-modules-dir --vendor --node-modules-linker"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__list)
            opts="--depth --prod --dev --recursive"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__link)
            opts="--lockfile-only --lock --no-lock --frozen-lockfile"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__unlink)
            opts="--lockfile-only --lock --no-lock --frozen-lockfile"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__approve__scripts)
            opts="--lockfile-only --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__lsp)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__vendor)
            opts="--help --quiet --unstable"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bundle)
            opts="--output --outdir --format --packages --platform --sourcemap --external --watch --minify --keep-names --code-splitting --inline-imports --declaration --check --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --allow-import --deny-import --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__audit)
            opts="--level --ignore-unfixable --ignore-registry-errors --socket --fix --ignore --lock --no-lock --frozen-lockfile"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__why)
            opts="--env-file --lock --no-lock --frozen-lockfile"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__transpile)
            opts="--output --outdir --source-map --declaration --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bump__version)
            opts="--workspace --no-workspace --dry-run --start --base --import-map --release-notes --config"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__ci)
            opts="--prod --skip-types --env-file"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__desktop)
            opts="--check --inspect-renderer --include --exclude --exclude-unused-npm --output --target --no-code-cache --icon --hmr --backend --engine --all-targets --compress --ext --env-file --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --preload --require --conditions --allow-scripts"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__pack)
            opts="--output --dry-run --allow-slow-types --allow-dirty --set-version --no-source-maps --ignore --config --no-config --env-file"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__x)
            opts="--yes --package --ignore-scripts --install-alias --check --env-file --allow-scripts --no-check --import-map --no-remote --no-npm --node-modules-dir --vendor --node-modules-linker --config --no-config --reload --lock --no-lock --frozen-lockfile --cert --unsafely-ignore-certificate-errors --min-dep-age --cached-only --location --v8-flags --seed --preload --require --conditions --inspect --inspect-brk --inspect-wait --inspect-publish-uid"
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__json_reference)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help)
            opts=""
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

complete -F _deno -o bashdefault -o default deno
