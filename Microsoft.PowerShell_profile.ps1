#welcome

echo "nice to see you again!use 'lsmods' to check all modules!"

#aliases

#New-Alias py3 D:\Zeta_tools\py\python.exe
#New-Alias imdbg D:\Zeta_Tools\ImmunityDebugger\ImmunityDebugger.exe


#settings

Import-Module posh-git
Import-Module oh-my-posh

Set-PoshPrompt -Theme Avit

#modules

#about all >>>

cls
echo "~~		Weclome Come Back,  Kyros. 		~~"

Set-PSReadLineOption -PredictionSource History # 设置预测文本来源为历史记录
 
Set-PSReadlineKeyHandler -Key Tab -Function Complete # 设置 Tab 键补全
Set-PSReadLineKeyHandler -Key "Ctrl+d" -Function MenuComplete # 设置 Ctrl+d 为菜单补全和 Intellisense
Set-PSReadLineKeyHandler -Key "Ctrl+z" -Function Undo # 设置 Ctrl+z 为撤销
Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward # 设置向上键为后向搜索历史记录
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward # 设置向下键为前向搜索历史纪录

function lsmods {
	echo "use 'lsmod <module name>' to see the module "
	echo "modules:"
	echo "windows"
	echo "rust"
	echo "git"
	echo "python"
}

function lsmod {
	Param(
		[string] $chosen
	)
	$chosen = "ls-" + $chosen
	&$chosen
}

function ls-windows {
	echo "windows module:"
	echo "sudo  (change to administrator)"
	echo "nip ( Use the netsh interface portproxy commands to act as proxies between IPv4 and IPv6 networks and applications.nip is abbreviation of  netsh interface portproxy )"
	echo "nip-show (show the config of nip)"
}

function ls-rust {
	echo "rust module:"
	echo "tors (cd to rust working directory)"
	echo "rsclear (clear cargo check cache to speed cargo check)"
	echo "rsbr (build this rust workspace by release mode)"
	echo "tauri-dbg (build this tauri workspace by debug mode)"
	echo "rsdr (build this rust workspace by debug mode and run)"
	echo "tk-s (trunk serve)"
	echo  "cr (cargo run)"
	echo "ct-a (cargo test --all)"
	echo "ct-ao (cargo test --all -- --show-output)"
	echo "ct-ai (cargo test --all --ignored)"

}
function ls-git {
	echo "git module:"
	echo "git-proxy-on-http (turn on global http proxy)"
	echo "git-proxy-on-socks (turn on global socks proxy)"
	echo "git-proxy-off (turn off global proxy)"
	echo "git-conf-check (show git global config)"
	echo "git-b (git branch)"
	echo "git-b-dev (git branch <your usually used git branch for dev>)"
	echo "git-br (git branch -r)"
	echo "git-cd-dev (git checkout <your usually used git branch for dev>)"
	echo "git-cd-main (git checkout main)"
	echo "git-m-dev (git merge <your usually used git branch for dev>)"
	echo "git-del-dev (git branch -d <your usually used git branch for dev>)"
	echo "git-cm <text> (args:$text;git commit -m $text)"
	echo "git-ls-main (list followed files in main branch)"
	echo "git-ls-dev (list followed files in dev branch)"
	echo "git-push-r-main (push to remote main branch)"
	echo "git-push-r-dev (push to remote dev branch)"
	echo "git-i-main (git init --initial-branch=main  )"
	echo "git-r-add-origin (args:$url;git remote add origin $url)"
	echo "git-r-merge-main  (git pull origin main --allow-unrelated-histories)"
}

function ls-python{

}

#all <<<
 
#about windows>>>

function sudo {
	Start-Process powershell -Verb runAs
}

function nip-show {
	netsh interface portproxy show all
}

function nip {
	netsh interface portproxy $args
}

#windows<<<


#about rust >>>

function tors {
	#cd D:\LAB\Rust\
}

function rsclear {
	rm C:\Users\a\.cargo\.package-cache
}
function cr {
	cargo run
}
function rsbr {
	cargo build --release 
}

function tauri-dbg {
	set RUST_DEBUG=1
	cargo tauri dev
}

function rsdr {
	cargo run
}

function tk-s {
	trunk serve
}

function ct-a {
	cargo test --all
}

function ct-ao {
	cargo test --all -- --show-output
}
function ct-ai {
	cargo test --all -- --ignored
}
#rust <<<


#about git >>>

function git-proxy-on-http {
	git config --global http.https://github.com.proxy http://127.0.0.1:7890
}
function git-proxy-on-socks {
	git config --global http.https://github.com.proxy socks5://127.0.0.1:1080
	
}

function git-proxy-off {
	git config --global --unset http.https://github.com.proxy
}

function git-conf-check {
	git config --global -l
}

function git-b {
	git branch
}

function git-ls-main {
	git ls-tree -r main --name-only
}

function git-ls-dev {
	git ls-tree -r kyros-dev --name-only
}

function git-b-dev {
	git branch kyros-dev
}

function git-br {
	git branch -r
}

function git-cd-dev {
	git checkout kyros-dev	
}

function git-cd-main {
	git checkout main
}

function git-m-dev {
	git merge kyros-dev
}

function git-del-dev {
	git branch -d kyros-dev	
}

function git-push-r-main {
	git push origin main
}

function git-push-r-dev {
	git push origin kyros-dev
}
function git-cm {
	Param(
		[string] $text
	)
	git commit -m $text

}

function git-i-main {
	git init --initial-branch=main  
}

function git-r-add-origin {
	Param(
		[string] $url
	)
	git remote add origin $url

}

function git-r-merge-main {
	git pull origin main --allow-unrelated-histories
}

#git <<<

#about python>>>

#python<<<