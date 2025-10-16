#!/usr/bin/env bash
#!/usr/bin/env bashio
echo "Starting MeTube..."
set -e

export_options() {
    local json_source="/data/options.json"
    bashio::log.info "Exporting addon options from ${json_source}"

    # WARNING: Exporting all keys can cause trouble if your config contains unsafe or untrusted keys!
    mapfile -t keys < <(jq -r 'keys[]' "${json_source}")
    for key in "${keys[@]}"; do
        local value
        value=$(jq -r ".${key}" "${json_source}")
        if bashio::config.false "verbose" || [[ "$key" == *"PASS"* ]]; then
            bashio::log.blue "${key}=******"
        else
            bashio::log.blue "${key}='${value}'"
        fi
        export "${key}=${value}"
    done
}

#export_options
# Always reload DB config from options (to ensure up-to-date values after export)
export DOWNLOAD_DIR="$(bashio::config 'DOWNLOAD_DIR')"


exec python3 -m metube
