# usage:
#   kubectx
#     - lists all contexts
#   kubectx CONTEXT_NAME
#     - set the current context to CONTEXT_NAME
kctx() {
        if [ $# -gt 0 ]; then kubectl config use-context "$1"
        else kubectl config get-contexts; fi
}

# usage:
#   kubens
#     - lists all available namespaces
#   kubens NAMESPACE_NAME
#     - sets the default namespace for the current context to NAMESPACE_NAME
kns() {
        if [ $# -gt 0 ]; then kubectl config set-context --current --namespace $1
        else
                kubectl get -o custom-columns=NAME:.metadata.name --no-headers ns
                echo "--\ncurrent: $(kubectl config view --minify -o jsonpath="{.contexts[0].context.namespace}")"
        fi
}
