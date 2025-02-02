# playground completion                                    -*- shell-script -*-

# This bash completions script was generated by
# completely (https://github.com/dannyben/completely)
# Modifying it manually is not recommended

_playground_completions_filter() {
  local words="$1"
  local cur=${COMP_WORDS[COMP_CWORD]}
  local result=()

  if [[ "${cur:0:1}" == "-" ]]; then
    echo "$words"
  
  else
    for word in $words; do
      [[ "${word:0:1}" != "-" ]] && result+=("$word")
    done

    echo "${result[*]}"

  fi
}

_playground_completions() {
  local cur=${COMP_WORDS[COMP_CWORD]}
  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")
  local compline="${compwords[*]}"

  case "$compline" in
    'bootstrap-reproduction-model'*'--producer')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "none avro avro-with-key protobuf protobuf-with-key json-schema json-schema-with-key")" -- "$cur" )
      ;;

    'bootstrap-reproduction-model'*'--pipeline')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(ls ../../connect/connect-*sink/*.sh)")" -- "$cur" )
      ;;

    'bootstrap-reproduction-model'*'--file')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(ls *.sh)")" -- "$cur" )
      ;;

    'enable-remote-debugging'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'topic get-number-records'*'--topic')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-topic-list)")" -- "$cur" )
      ;;

    'bootstrap-reproduction-model'*'-f')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(ls *.sh)")" -- "$cur" )
      ;;

    'bootstrap-reproduction-model'*'-p')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "none avro avro-with-key protobuf protobuf-with-key json-schema json-schema-with-key")" -- "$cur" )
      ;;

    'connector log-level set'*'--level')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "INFO WARN DEBUG TRACE")" -- "$cur" )
      ;;

    'topic display-consumer-offsets'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'connector show-lag'*'--connector')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'container restart'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'topic display-connect-offsets'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'bootstrap-reproduction-model'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--custom-smt --description --file --help --nb-producers --pipeline --producer -d -f -h -n -p -s")" -- "$cur" )
      ;;

    'container resume'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'connector resume'*'--connector')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'connector delete'*'--connector')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'get-jmx-metrics'*'--component')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "zookeeper broker connect schema-registry")" -- "$cur" )
      ;;

    'container pause'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'topic get-number-records'*'-t')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-topic-list)")" -- "$cur" )
      ;;

    'connector pause'*'--connector')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'get-properties'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'enable-remote-debugging'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container get-ip-addresses'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'container logs'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container exec'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container kill'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'connector log-level set'*'-l')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "INFO WARN DEBUG TRACE")" -- "$cur" )
      ;;

    'container ssh'*'--container')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'topic get-number-records'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --topic -h -t")" -- "$cur" )
      ;;

    'enable-remote-debugging'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'connector log-level get'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --package -h -p")" -- "$cur" )
      ;;

    'connector log-level set'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --level --package -h -l -p")" -- "$cur" )
      ;;

    'container exec'*'--shell')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "bash sh ksh zsh")" -- "$cur" )
      ;;

    'topic describe'*'--topic')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-topic-list)")" -- "$cur" )
      ;;

    'container ssh'*'--shell')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "bash sh ksh zsh")" -- "$cur" )
      ;;

    'connector show-lag'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'container restart'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container resume'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'connector resume'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'connector delete'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'connector log-level'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h get set")" -- "$cur" )
      ;;

    'get-connector-list'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'get-jmx-metrics'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "zookeeper broker connect schema-registry")" -- "$cur" )
      ;;

    'container recreate'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'container kill-all'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'container pause'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'connector pause'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-connector-list)")" -- "$cur" )
      ;;

    'connector show-lag'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--connector --help -c -h")" -- "$cur" )
      ;;

    'get-properties'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container logs'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container exec'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container restart'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'container kill'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'topic describe'*'-t')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(playground get-topic-list)")" -- "$cur" )
      ;;

    'connector plugins'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'container ssh'*'-c')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "$(docker ps --format '{{.Names}}')")" -- "$cur" )
      ;;

    'container ssh'*'-s')
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "bash sh ksh zsh")" -- "$cur" )
      ;;

    'container resume'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'connector status'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --json -h")" -- "$cur" )
      ;;

    'connector resume'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--connector --help -c -h")" -- "$cur" )
      ;;

    'connector delete'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--connector --help -c -h")" -- "$cur" )
      ;;

    'get-jmx-metrics'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--component --domain --help -c -d -h")" -- "$cur" )
      ;;

    'container pause'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'connector pause'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--connector --help -c -h")" -- "$cur" )
      ;;

    'get-topic-list'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h")" -- "$cur" )
      ;;

    'get-properties'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'container logs'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help --max-wait --open --wait-for-log -c -h -m -o -w")" -- "$cur" )
      ;;

    'container exec'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--command --container --help --root --shell -c -d -h")" -- "$cur" )
      ;;

    'container kill'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help -c -h")" -- "$cur" )
      ;;

    'topic describe'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --topic -h -t")" -- "$cur" )
      ;;

    'container ssh'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--container --help --shell -c -h -s")" -- "$cur" )
      ;;

    'container'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h exec get-ip-addresses kill kill-all logs pause recreate restart resume ssh")" -- "$cur" )
      ;;

    'connector'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h delete log-level pause plugins resume show-lag status")" -- "$cur" )
      ;;

    'topic'*)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help -h describe display-connect-offsets display-consumer-offsets get-number-records")" -- "$cur" )
      ;;

    *)
      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_playground_completions_filter "--help --version -h -v bootstrap-reproduction-model connector container enable-remote-debugging get-connector-list get-jmx-metrics get-properties get-topic-list topic")" -- "$cur" )
      ;;

  esac
} &&
complete -F _playground_completions playground

# ex: filetype=sh
