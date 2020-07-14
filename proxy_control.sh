
function test_proxy() {
	curl myip.ipip.net
}

function proxy_on(){
    export ALL_PROXY=socks5://127.0.0.1:8118
    export http_proxy=http://127.0.0.1:8118
    export https_proxy=https://127.0.0.1:8118
    echo -e "已开启代理"
}

function proxy_off(){
    unset ALL_PROXY
    unset http_proxy
    unset https_proxy
    echo -e "已关闭代理"
}
