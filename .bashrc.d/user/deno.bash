_deno() {
    local i cur prev opts cmd
    COMPREPLY=()
    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
        cur="$2"
    else
        cur="${COMP_WORDS[COMP_CWORD]}"
    fi
    prev="$3"
    cmd=""
    opts=""

    for i in "${COMP_WORDS[@]:0:COMP_CWORD}"
    do
        case "${cmd},${i}" in
            ",$1")
                cmd="deno"
                ;;
            deno,add)
                cmd="deno__add"
                ;;
            deno,approve-scripts)
                cmd="deno__approve__scripts"
                ;;
            deno,audit)
                cmd="deno__audit"
                ;;
            deno,bench)
                cmd="deno__bench"
                ;;
            deno,bump-version)
                cmd="deno__bump__version"
                ;;
            deno,bundle)
                cmd="deno__bundle"
                ;;
            deno,cache)
                cmd="deno__cache"
                ;;
            deno,check)
                cmd="deno__check"
                ;;
            deno,ci)
                cmd="deno__ci"
                ;;
            deno,clean)
                cmd="deno__clean"
                ;;
            deno,compile)
                cmd="deno__compile"
                ;;
            deno,completions)
                cmd="deno__completions"
                ;;
            deno,coverage)
                cmd="deno__coverage"
                ;;
            deno,create)
                cmd="deno__create"
                ;;
            deno,deploy)
                cmd="deno__deploy"
                ;;
            deno,desktop)
                cmd="deno__desktop"
                ;;
            deno,doc)
                cmd="deno__doc"
                ;;
            deno,eval)
                cmd="deno__eval"
                ;;
            deno,fmt)
                cmd="deno__fmt"
                ;;
            deno,help)
                cmd="deno__help"
                ;;
            deno,i)
                cmd="deno__install"
                ;;
            deno,info)
                cmd="deno__info"
                ;;
            deno,init)
                cmd="deno__init"
                ;;
            deno,install)
                cmd="deno__install"
                ;;
            deno,json_reference)
                cmd="deno__json_reference"
                ;;
            deno,jupyter)
                cmd="deno__jupyter"
                ;;
            deno,link)
                cmd="deno__link"
                ;;
            deno,lint)
                cmd="deno__lint"
                ;;
            deno,list)
                cmd="deno__list"
                ;;
            deno,lsp)
                cmd="deno__lsp"
                ;;
            deno,outdated)
                cmd="deno__outdated"
                ;;
            deno,pack)
                cmd="deno__pack"
                ;;
            deno,publish)
                cmd="deno__publish"
                ;;
            deno,remove)
                cmd="deno__remove"
                ;;
            deno,repl)
                cmd="deno__repl"
                ;;
            deno,run)
                cmd="deno__run"
                ;;
            deno,sandbox)
                cmd="deno__sandbox"
                ;;
            deno,serve)
                cmd="deno__serve"
                ;;
            deno,task)
                cmd="deno__task"
                ;;
            deno,test)
                cmd="deno__test"
                ;;
            deno,transpile)
                cmd="deno__transpile"
                ;;
            deno,types)
                cmd="deno__types"
                ;;
            deno,uninstall)
                cmd="deno__uninstall"
                ;;
            deno,unlink)
                cmd="deno__unlink"
                ;;
            deno,update)
                cmd="deno__update"
                ;;
            deno,upgrade)
                cmd="deno__upgrade"
                ;;
            deno,vendor)
                cmd="deno__vendor"
                ;;
            deno,watch)
                cmd="deno__watch"
                ;;
            deno,why)
                cmd="deno__why"
                ;;
            deno,x)
                cmd="deno__x"
                ;;
            deno__help,add)
                cmd="deno__help__add"
                ;;
            deno__help,approve-scripts)
                cmd="deno__help__approve__scripts"
                ;;
            deno__help,audit)
                cmd="deno__help__audit"
                ;;
            deno__help,bench)
                cmd="deno__help__bench"
                ;;
            deno__help,bump-version)
                cmd="deno__help__bump__version"
                ;;
            deno__help,bundle)
                cmd="deno__help__bundle"
                ;;
            deno__help,cache)
                cmd="deno__help__cache"
                ;;
            deno__help,check)
                cmd="deno__help__check"
                ;;
            deno__help,ci)
                cmd="deno__help__ci"
                ;;
            deno__help,clean)
                cmd="deno__help__clean"
                ;;
            deno__help,compile)
                cmd="deno__help__compile"
                ;;
            deno__help,completions)
                cmd="deno__help__completions"
                ;;
            deno__help,coverage)
                cmd="deno__help__coverage"
                ;;
            deno__help,create)
                cmd="deno__help__create"
                ;;
            deno__help,deploy)
                cmd="deno__help__deploy"
                ;;
            deno__help,desktop)
                cmd="deno__help__desktop"
                ;;
            deno__help,doc)
                cmd="deno__help__doc"
                ;;
            deno__help,eval)
                cmd="deno__help__eval"
                ;;
            deno__help,fmt)
                cmd="deno__help__fmt"
                ;;
            deno__help,info)
                cmd="deno__help__info"
                ;;
            deno__help,init)
                cmd="deno__help__init"
                ;;
            deno__help,install)
                cmd="deno__help__install"
                ;;
            deno__help,json_reference)
                cmd="deno__help__json_reference"
                ;;
            deno__help,jupyter)
                cmd="deno__help__jupyter"
                ;;
            deno__help,link)
                cmd="deno__help__link"
                ;;
            deno__help,lint)
                cmd="deno__help__lint"
                ;;
            deno__help,list)
                cmd="deno__help__list"
                ;;
            deno__help,lsp)
                cmd="deno__help__lsp"
                ;;
            deno__help,outdated)
                cmd="deno__help__outdated"
                ;;
            deno__help,pack)
                cmd="deno__help__pack"
                ;;
            deno__help,publish)
                cmd="deno__help__publish"
                ;;
            deno__help,remove)
                cmd="deno__help__remove"
                ;;
            deno__help,repl)
                cmd="deno__help__repl"
                ;;
            deno__help,run)
                cmd="deno__help__run"
                ;;
            deno__help,sandbox)
                cmd="deno__help__sandbox"
                ;;
            deno__help,serve)
                cmd="deno__help__serve"
                ;;
            deno__help,task)
                cmd="deno__help__task"
                ;;
            deno__help,test)
                cmd="deno__help__test"
                ;;
            deno__help,transpile)
                cmd="deno__help__transpile"
                ;;
            deno__help,types)
                cmd="deno__help__types"
                ;;
            deno__help,uninstall)
                cmd="deno__help__uninstall"
                ;;
            deno__help,unlink)
                cmd="deno__help__unlink"
                ;;
            deno__help,update)
                cmd="deno__help__update"
                ;;
            deno__help,upgrade)
                cmd="deno__help__upgrade"
                ;;
            deno__help,vendor)
                cmd="deno__help__vendor"
                ;;
            deno__help,watch)
                cmd="deno__help__watch"
                ;;
            deno__help,why)
                cmd="deno__help__why"
                ;;
            deno__help,x)
                cmd="deno__help__x"
                ;;
            *)
                ;;
        esac
    done

    case "${cmd}" in
        deno)
            opts="-c -r -A -P -R -W -N -E -S -I -t -h -V -L -q --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --watch --watch-hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --coverage --cpu-prof --cpu-prof-dir --cpu-prof-name --cpu-prof-interval --cpu-prof-md --cpu-prof-flamegraph --tunnel --use-env-proxy --no-use-env-proxy --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --version --log-level --quiet [SCRIPT_ARG]... run watch serve add audit remove bench bundle cache check clean compile create desktop completions coverage doc deploy sandbox eval fmt init info list install i ci json_reference jupyter approve-scripts uninstall outdated link unlink lsp lint publish pack repl task test transpile types update upgrade bump-version vendor why x help"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 1 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-hmr)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --coverage)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-dir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --cpu-prof-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tunnel)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__add)
            opts="-h -L -q -D -O -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --dev --save-optional --no-save --allow-scripts --allow-import --deny-import --lock --no-lock --frozen --lockfile-only --npm --jsr --save-exact --package-json --env-file [packages]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__approve__scripts)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --lockfile-only [packages]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__audit)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --lock --no-lock --frozen --env-file --level --ignore-unfixable --socket --ignore-registry-errors --ignore --fix fix"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --level)
                    COMPREPLY=($(compgen -W "low moderate high critical" -- "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bench)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --json --ignore --filter --no-run --permit-no-files --watch --watch-exclude --no-clear-screen --env-file --ext [files]... [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --filter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bump__version)
            opts="-h -L -q -w -c --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --workspace --no-workspace --dry-run --start --base --import-map --release-notes --config major minor patch premajor preminor prepatch prerelease"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --start)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --base)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --release-notes)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__bundle)
            opts="-h -L -q -c -r -o -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --check --env-file --output --outdir --external --format --packages --minify --keep-names --code-splitting --inline-imports --sourcemap --watch --platform --declaration --allow-scripts --allow-import --deny-import [file]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -o)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --outdir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --external)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --format)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --packages)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inline-imports)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --sourcemap)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --platform)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__cache)
            opts="-h -L -q -c -r -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --check --allow-scripts --allow-import --deny-import --env-file [file]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__check)
            opts="-h -L -q -c -r -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --no-code-cache --all --remote --doc --doc-only --check-js --desktop --allow-import --deny-import --v8-flags --env-file --watch --watch-exclude --no-clear-screen [file]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__ci)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --prod --skip-types --env-file"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__clean)
            opts="-h -L -q -e --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --except --dry-run --node-modules-dir --node-modules-linker --vendor [except-paths]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__compile)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I -o --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --include --exclude --output --target --no-code-cache --no-terminal --icon --self-extracting --bundle --app-name --minify --exclude-unused-npm --watch --watch-exclude --no-clear-screen --ext --env-file [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --include)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --exclude)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -o)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --target)
                    COMPREPLY=($(compgen -W "x86_64-unknown-linux-gnu aarch64-unknown-linux-gnu x86_64-pc-windows-msvc aarch64-pc-windows-msvc x86_64-apple-darwin aarch64-apple-darwin" -- "${cur}"))
                    return 0
                    ;;
                --icon)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --app-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__completions)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --dynamic bash fish powershell zsh fig"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__coverage)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --ignore --include --exclude --lcov --output --html --detailed --threshold [files]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --include)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --threshold)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__create)
            opts="-h -L -q -y --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --npm --jsr --yes [PACKAGE] [ARGS]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__deploy)
            opts="-h -L -q --help --log-level --quiet [args]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__desktop)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I -o --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --inspect-renderer --include --exclude --exclude-unused-npm --output --target --no-code-cache --icon --hmr --backend --all-targets --compress --ext --env-file [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-renderer)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --include)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --exclude)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -o)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --target)
                    COMPREPLY=($(compgen -W "x86_64-unknown-linux-gnu aarch64-unknown-linux-gnu x86_64-pc-windows-msvc aarch64-pc-windows-msvc x86_64-apple-darwin aarch64-apple-darwin" -- "${cur}"))
                    return 0
                    ;;
                --icon)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --backend)
                    COMPREPLY=($(compgen -W "webview cef raw" -- "${cur}"))
                    return 0
                    ;;
                --compress)
                    COMPREPLY=($(compgen -W "xz lzma zstd" -- "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__doc)
            opts="-h -L -q -r -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --import-map --reload --lock --no-lock --frozen --no-npm --no-remote --allow-import --deny-import --env-file --json --html --name --category-docs --symbol-redirect-map --strip-trailing-html --default-symbol-map --output --private --filter --lint [source_file]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --category-docs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --symbol-redirect-map)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --default-symbol-map)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --filter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__eval)
            opts="-h -L -q -c -r -p --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --ext --print --env-file --cpu-prof --cpu-prof-dir --cpu-prof-name --cpu-prof-interval --cpu-prof-md --cpu-prof-flamegraph [CODE_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --cpu-prof-dir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --cpu-prof-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__fmt)
            opts="-h -L -q -c --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --config --no-config --check --fail-fast --ext --ignore --permit-no-files --watch --watch-exclude --no-clear-screen --use-tabs --line-width --indent-width --single-quote --prose-wrap --no-semicolons --no-editorconfig --unstable-css --unstable-html --unstable-component --unstable-yaml --unstable-sql [files]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs md json jsonc css scss less html svelte vue astro yml yaml ipynb sql vto njk" -- "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --use-tabs)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --line-width)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --indent-width)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --single-quote)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --prose-wrap)
                    COMPREPLY=($(compgen -W "always never preserve" -- "${cur}"))
                    return 0
                    ;;
                --no-semicolons)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet run watch serve add audit remove bench bundle cache check clean compile create desktop completions coverage doc deploy sandbox eval fmt init info list install ci json_reference jupyter approve-scripts uninstall outdated link unlink lsp lint publish pack repl task test transpile types update upgrade bump-version vendor why x"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__add)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__approve__scripts)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__audit)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__bench)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__bump__version)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__bundle)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__cache)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__check)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__ci)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__clean)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__compile)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__completions)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__coverage)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__create)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__deploy)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__desktop)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__doc)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__eval)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__fmt)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__info)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__init)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__install)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__json_reference)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__jupyter)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__link)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__lint)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__list)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__lsp)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__outdated)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__pack)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__publish)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__remove)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__repl)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__run)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__sandbox)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__serve)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__task)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__test)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__transpile)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__types)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__uninstall)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__unlink)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__update)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__upgrade)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__vendor)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__watch)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__why)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__help__x)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 3 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__info)
            opts="-I -h -L -q -r -c --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --allow-import --deny-import --env-file --help --log-level --quiet --reload --cert --unsafely-ignore-certificate-errors --location --no-check --no-config --no-remote --no-npm --lock --no-lock --frozen --config --import-map --node-modules-dir --node-modules-linker --vendor --json --minimum-dependency-age [file]"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__init)
            opts="-h -L -q -y --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --npm --jsr --lib --serve --empty --yes [DIRECTORY OR PACKAGE]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__install)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I -n -f -g -e -D -O --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --check --allow-scripts --name --root --force --compile --global --entrypoint --env-file --dev --save-optional --no-save --npm --jsr --save-exact --lockfile-only --package-json --os --arch --prod --skip-types [cmd]... [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -n)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --os)
                    COMPREPLY=($(compgen -W "aix android darwin freebsd linux openbsd sunos win32" -- "${cur}"))
                    return 0
                    ;;
                --arch)
                    COMPREPLY=($(compgen -W "arm arm64 ia32 mips mipsel ppc ppc64 s390 s390x x64" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__json_reference)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__jupyter)
            opts="-n -d -h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --install --name --display --force --kernel --conn --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -n)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --display)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -d)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --conn)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__link)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --lock --no-lock --frozen --lockfile-only [paths]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__lint)
            opts="-h -L -q -c -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --fix --ext --rules --rules-tags --rules-include --rules-exclude --no-config --config --ignore --json --compact --permit-no-files --watch --watch-exclude --no-clear-screen --allow-import --deny-import [files]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --rules-tags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --rules-include)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --rules-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__list)
            opts="-h -L -q -r --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --depth --prod --dev --recursive [filters]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --depth)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__lsp)
            opts="-h -L -q --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__outdated)
            opts="-h -L -q -r -i -u --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --latest --compatible --recursive --minimum-dependency-age --lockfile-only --interactive --lock --no-lock --frozen --env-file --update [filters]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__pack)
            opts="-h -L -q -o -c --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --output --config --no-config --dry-run --allow-slow-types --allow-dirty --set-version --no-source-maps --ignore --env-file [files]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --output)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -o)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --set-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__publish)
            opts="-h -L -q -c --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --token --config --no-config --dry-run --allow-slow-types --allow-dirty --no-provenance --set-version --check --no-check --env-file"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --token)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --set-version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__remove)
            opts="-h -L -q -g --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --root --global --lock --no-lock --frozen --lockfile-only --package-json [packages]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__repl)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --env-file --help --log-level --quiet --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --eval-file --eval --json [ARGS]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --eval-file)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --eval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__run)
            opts="-c -r -A -P -R -W -N -E -S -I -t -h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --watch --watch-hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --coverage --cpu-prof --cpu-prof-dir --cpu-prof-name --cpu-prof-interval --cpu-prof-md --cpu-prof-flamegraph --tunnel --use-env-proxy --no-use-env-proxy --help --log-level --quiet [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-hmr)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --coverage)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-dir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --cpu-prof-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tunnel)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__sandbox)
            opts="-h -L -q --help --log-level --quiet [args]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__serve)
            opts="-c -r -A -P -R -W -N -E -S -I -t -h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --port --host --open --parallel --check --watch --watch-hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --cpu-prof --cpu-prof-dir --cpu-prof-name --cpu-prof-interval --cpu-prof-md --cpu-prof-flamegraph --tunnel --help --log-level --quiet [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --port)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --host)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-hmr)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --cpu-prof-dir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --cpu-prof-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tunnel)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__task)
            opts="-h -L -q -c -r -f -j -t --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --config --lock --no-lock --frozen --cwd --recursive --filter --eval --no-prefix --concurrency --jobs --if-present --env-file --node-modules-dir --node-modules-linker --tunnel"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cwd)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --filter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -f)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --jobs)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --concurrency)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -j)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tunnel)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__test)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I -u --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --ignore --no-run --trace-leaks --sanitize-ops --sanitize-resources --doc --fail-fast --permit-no-files --filter --shuffle --retry --repeats --shard --coverage --coverage-raw-data-only --coverage-threshold --clean --parallel --changed --related --watch --watch-exclude --no-clear-screen --junit-path --reporter --hide-stacktraces --update-snapshots --env-file --ext [files]... [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --fail-fast)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --filter)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --shuffle)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --retry)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --repeats)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --shard)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --coverage)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --coverage-threshold)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --changed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --related)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --junit-path)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reporter)
                    COMPREPLY=($(compgen -W "pretty dot junit tap" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__transpile)
            opts="-h -L -q -c -r -o --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --output --outdir --source-map --declaration [file]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -o)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --outdir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --source-map)
                    COMPREPLY=($(compgen -W "none inline separate" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__types)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__uninstall)
            opts="-h -L -q -g --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --root --global --lock --no-lock --frozen --lockfile-only --package-json [name-or-package] [additional-packages]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --root)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__unlink)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --lock --no-lock --frozen --lockfile-only [names_or_paths]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__update)
            opts="-h -L -q -r -i --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --latest --compatible --recursive --minimum-dependency-age --lockfile-only --interactive --lock --no-lock --frozen --env-file [filters]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__upgrade)
            opts="-h -L -q -f --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --version --output --dry-run --force --canary --rc --checksum --no-delta --cert --unsafely-ignore-certificate-errors [VERSION]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --version)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --output)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --checksum)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__vendor)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__watch)
            opts="-c -r -A -P -R -W -N -E -S -I -t -h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --check --watch --watch-hmr --watch-exclude --no-clear-screen --ext --env-file --no-code-cache --coverage --cpu-prof --cpu-prof-dir --cpu-prof-name --cpu-prof-interval --cpu-prof-md --cpu-prof-flamegraph --tunnel --use-env-proxy --no-use-env-proxy --help --log-level --quiet [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-hmr)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --watch-exclude)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ext)
                    COMPREPLY=($(compgen -W "ts tsx js jsx mts mjs cts cjs" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --coverage)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-dir)
                    COMPREPLY=()
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o plusdirs
                    fi
                    return 0
                    ;;
                --cpu-prof-name)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --cpu-prof-interval)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --tunnel)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                -t)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__why)
            opts="-h -L -q --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --lock --no-lock --frozen --env-file <package>"
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
        deno__x)
            opts="-h -L -q -c -r -A -P -R -W -N -E -S -I -y -p --unstable --unstable-bare-node-builtins --unstable-broadcast-channel --unstable-bundle --unstable-byonm --unstable-cron --unstable-detect-cjs --unstable-ffi --unstable-fs --unstable-http --unstable-kv --unstable-lazy-dynamic-imports --unstable-lockfile-v5 --unstable-net --unstable-no-legacy-abort --unstable-node-globals --unstable-npm-lazy-caching --unstable-otel --unstable-process --unstable-raw-imports --unstable-sloppy-imports --unstable-subdomain-wildcards --unstable-temporal --unstable-tsgo --unstable-unsafe-proto --unstable-vsock --unstable-webgpu --unstable-worker-options --help --log-level --quiet --no-check --import-map --no-remote --no-npm --node-modules-dir --node-modules-linker --vendor --conditions --config --no-config --reload --lock --no-lock --frozen --cert --unsafely-ignore-certificate-errors --minimum-dependency-age --allow-all --permission-set --allow-read --deny-read --ignore-read --allow-write --deny-write --allow-net --deny-net --allow-env --deny-env --ignore-env --allow-sys --deny-sys --allow-run --deny-run --allow-ffi --deny-ffi --allow-hrtime --deny-hrtime --no-prompt --allow-import --deny-import --inspect --inspect-brk --inspect-wait --inspect-publish-uid --allow-scripts --cached-only --location --v8-flags --seed --enable-testing-features-do-not-use --trace-ops --eszip-internal-do-not-use --preload --require --yes --ignore-scripts --package --check --env-file --install-alias [SCRIPT_ARG]..."
            if [[ ${cur} == -* || ${COMP_CWORD} -eq 2 ]] ; then
                COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
                return 0
            fi
            case "${prev}" in
                --help)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                -h)
                    COMPREPLY=($(compgen -W "unstable full" -- "${cur}"))
                    return 0
                    ;;
                --log-level)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                -L)
                    COMPREPLY=($(compgen -W "trace debug info" -- "${cur}"))
                    return 0
                    ;;
                --no-check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --import-map)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --node-modules-dir)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --node-modules-linker)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --vendor)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --conditions)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --config)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -c)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --reload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                -r)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --lock)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --frozen)
                    COMPREPLY=($(compgen -W "true false" -- "${cur}"))
                    return 0
                    ;;
                --cert)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --unsafely-ignore-certificate-errors)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --minimum-dependency-age)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --permission-set)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -P)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -R)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-read)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -W)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-write)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -N)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-net)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -E)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --ignore-env)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -S)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-sys)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-run)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-ffi)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -I)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --deny-import)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-brk)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-wait)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --inspect-publish-uid)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --allow-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --location)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --v8-flags)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --seed)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --trace-ops)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --preload)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --require)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --ignore-scripts)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --package)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                -p)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --check)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                --env-file)
                    local oldifs
                    if [ -n "${IFS+x}" ]; then
                        oldifs="$IFS"
                    fi
                    IFS=$'\n'
                    COMPREPLY=($(compgen -f "${cur}"))
                    if [ -n "${oldifs+x}" ]; then
                        IFS="$oldifs"
                    fi
                    if [[ "${BASH_VERSINFO[0]}" -ge 4 ]]; then
                        compopt -o filenames
                    fi
                    return 0
                    ;;
                --install-alias)
                    COMPREPLY=($(compgen -f "${cur}"))
                    return 0
                    ;;
                *)
                    COMPREPLY=()
                    ;;
            esac
            COMPREPLY=( $(compgen -W "${opts}" -- "${cur}") )
            return 0
            ;;
    esac
}

if [[ "${BASH_VERSINFO[0]}" -eq 4 && "${BASH_VERSINFO[1]}" -ge 4 || "${BASH_VERSINFO[0]}" -gt 4 ]]; then
    complete -F _deno -o nosort -o bashdefault -o default deno
else
    complete -F _deno -o bashdefault -o default deno
fi
