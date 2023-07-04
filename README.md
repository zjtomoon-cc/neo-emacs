
# Table of Contents

1.  [About](#org68590d3)
2.  [How to install](#orgeda4ed6)
    1.  [Install emacs](#org92bdc48)
    2.  [Clone project](#orgc32dc8b)
    3.  [Doom Install](#org3aed0bc)
3.  [How to update](#org66f76c7)
4.  [Private setting](#org1ed2736)
5.  [Neoemacs modules](#orgd3b3e45)
    1.  [Java module](#org1711e59)
    2.  [Dap-java Usage](#orga7bf80b)
    3.  [Ejc-sql Usage](#org0a7637a)
    4.  [Restclient](#orge3c057d)
    5.  [Company box customize](#org84c31b1)
    6.  [Eredis Usage](#org57daba1)
    7.  [Bookmark](#org33d7aae)
    8.  [Rime Usage](#orgec0c24e)
    9.  [Libvterm Usage](#org20dcf91)
    10. [Elpa Offline](#org96361fe)
    11. [FZF Config](#org0d21365)
6.  [Org mode](#org98cef8e)
    1.  [Doom org style](#org4efebd4)
    2.  [Dot sketchviz](#orgdc31578)
    3.  [Latex PDF setting](#org3937495)
7.  [Alfred](#org0f7c5cb)
8.  [Questions](#orgb1a7d91)
    1.  [install ffmpeg](#org14b79b0)
    2.  [how to install all-the-icons?](#org0a4ba5f)
    3.  [how to install rime ?](#org9394284)
    4.  [how to install vterm?](#org30a4343)
    5.  [lsp-springboot](#org9f88084)
    6.  [useful key setting](#orgcefc8cd)
    7.  [why message showed could not load undo-tree history](#org990d8d1)
    8.  [File mode specification error: (file-missing Doing vfork No such file or directory)](#orgf2f3f5c)
    9.  [image dir](#org4d9429b)
9.  [About Logo](#orgab197df)
10. [Dependencies](#org848a6c8)

![img](./image-use.png)  


<a id="org68590d3"></a>

# About

Neo emacs is a configuration framework for GNU Emacs which is based on doom emacs and focuses on the java web application coding environment. Neo emacs has the following features:  

-   Code completion: Lsp-java supports maven and gradle project.
-   Program debugging: Dap-java supports program debugging.
-   Http client: Rest-client is a tool to manually explore and test HTTP REST webservices just like Postman.
-   SQL client: Ejc-sql turns Emacs into a simple SQL client which supports various databases.
-   Redis client: Eredis Non-blocking Redis client with focus on performance and robustness.
-   Terminal emulator: Emacs-libvterm (vterm) is fully-fledged terminal emulator inside GNU Emacs based on libvterm.
-   Knowledge management system: Org-roam borrows principles from the Zettelkasten method, providing a solution for non-hierarchical note-taking.
-   [onlinedoc](http://1.117.167.195/doc/neo-emacs.html)


<a id="orgeda4ed6"></a>

# How to install


<a id="org92bdc48"></a>

## Install emacs

There have many emacs distribution,just choose one and install it.  

-   [gnu-emacs](https://www.gnu.org/software/emacs/) is the official emacs client.
-   [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) which I used for a long time.
-   Building Emacs form source  
    
    building emacs with with source code  
    
        1    git clone git://git.savannah.gnu.org/emacs.git
        2    cd emacs
        3    git checkout emacs-28
        4    brew install  libxml2
        5    make configure
        6    ./configure --with-native-compilation --with-modern-papirus-icon --with-no-titlebar
        7    make -j4
        8    make install
        9    open nextstep/Emacs.app
-   EmacsPorts  
    
    EmacsPorts is the best choice to run NeoEmcas on macos.  
    
        brew install emacs-mac --with-natural-title-bar --with-mac-metal
        --with-librsvg --with-starter --with-emacs-big-sur-icon --with-native-comp
        defaults write org.gnu.Emacs TransparentTitleBar DARK
        defaults write org.gnu.Emacs HideDocumentIcon kES

After emacs installation, set environment variables which names EMACS ,this depends on your emacs exec path.  

    export EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs,


<a id="orgc32dc8b"></a>

## Clone project

clone doom-emacs and neo-emacs from github.  

    git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d
    git clone --depth 1 https://github.com/vanniuner/neo-emacs.git ~/.doom.d/


<a id="org3aed0bc"></a>

## Doom Install

Set up a vpn if you need it.  

    export http_proxy="ip:port"
    export https_proxy="ip:port"

Set your emacs cmd for doom install.  

    export EMACS= $YOUR EMACS CMD PATH$

At last run below, this will take few minutes. And it depends on the quality of your network.  

    ~/.emacs.doom/bin/doom install


<a id="org66f76c7"></a>

# How to update

    export EMACS=/Applications/Emacs.app/Contents/MacOS/EMACS
    sh ~/.emacs.d/bin/doom upgrade
    sh ~/.emacs.d/bin/doom install
    sh ~/.emacs.d/bin/doom sync


<a id="org1ed2736"></a>

# Private setting

Customize your private setting config in the config.el ;  
kse `setq`  

    (setq fd-exec-path                   "/opt/homebrew/bin/fd"
          rg-exec-path                   "/opt/homebrew/bin/rg")

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
<caption class="t-bottom"><span class="table-number">Table 1:</span> neo-emacs basic setting</caption>

<colgroup>
<col  class="org-left" />

<col  class="org-left" />

<col  class="org-left" />
</colgroup>
<tbody>
<tr>
<td class="org-left">emacs-module-root</td>
<td class="org-left">/opt/homebrew/opt/emacs-plus@28/include</td>
<td class="org-left">emcas module root</td>
</tr>


<tr>
<td class="org-left">rg-exec-path</td>
<td class="org-left">&ldquo;/opt/homebrew/bin/rg&rdquo;</td>
<td class="org-left">rg            exec path</td>
</tr>


<tr>
<td class="org-left">fd-exec-path</td>
<td class="org-left">&ldquo;/opt/homebrew/bin/fd&rdquo;</td>
<td class="org-left">fd            exec path</td>
</tr>


<tr>
<td class="org-left">dot-exec-path</td>
<td class="org-left">&ldquo;/opt/homebrew/bin/dot&rdquo;</td>
<td class="org-left">dot           exec path</td>
</tr>


<tr>
<td class="org-left">pdflatex-exec-path</td>
<td class="org-left">&ldquo;/Library/TeX/texbin/pdflatex&rdquo;</td>
<td class="org-left">pdflatex      exec path</td>
</tr>


<tr>
<td class="org-left">node-bin-dir</td>
<td class="org-left">&ldquo;~/node-v16.14.0/bin&rdquo;</td>
<td class="org-left">node exec path</td>
</tr>


<tr>
<td class="org-left">lsp-java-jdt-download-url</td>
<td class="org-left"><a href="http://1.117.167.195/download">http://1.117.167.195/download</a></td>
<td class="org-left">jdt-server URL</td>
</tr>


<tr>
<td class="org-left">lsp-java-java-path</td>
<td class="org-left">&#xa0;</td>
<td class="org-left">java11        exec path</td>
</tr>


<tr>
<td class="org-left">lsp-maven-path</td>
<td class="org-left">&ldquo;~/.m2/settings.xml&rdquo;</td>
<td class="org-left">maven setting path</td>
</tr>


<tr>
<td class="org-left">org-directory</td>
<td class="org-left">&ldquo;~/org/&rdquo;</td>
<td class="org-left">org           root path</td>
</tr>


<tr>
<td class="org-left">org-roam-directory</td>
<td class="org-left">&ldquo;~/org/org-roam&rdquo;</td>
<td class="org-left">org roam      root path</td>
</tr>


<tr>
<td class="org-left">display-line-numbers-type</td>
<td class="org-left">nil</td>
<td class="org-left">show line number</td>
</tr>


<tr>
<td class="org-left">rime-user-data-dir</td>
<td class="org-left">&ldquo;~/Library/Rime/&rdquo;</td>
<td class="org-left">rime config input</td>
</tr>


<tr>
<td class="org-left">rime-librime-root</td>
<td class="org-left">&ldquo;~/.doom.d/myconfig/rime-macos/dist&rdquo;</td>
<td class="org-left">emacs-rime/blob/master/</td>
</tr>
</tbody>
</table>


<a id="orgd3b3e45"></a>

# Neoemacs modules



<a id="org1711e59"></a>

## Java module

Neo-Emacs will automatically download the jdtls from \`lsp-java-jdt-download-url\`, and now it&rsquo;s located at [jdt-language-server-1.22.0](https://www.eclipse.org/downloads/download.php?file=/jdtls/milestones/1.22.0/jdt-language-server-1.22.0-202304131553.tar.gz).After that you could use all the features powered by eclipse.  

-   Generate eclipse files  
    Execute mvn command for generate eclipse .project & .classpath files on your project root path.  
    
        mvn eclipse:clean eclipse:eclipse
-   Support projectlombok plugin  
    There have a default lombok.jar in `doom-user-dir/neoemacs` which you could replace by yourself.  
    
        (setq  lombok-jar-path (expand-file-name (concat doom-user-dir "neoemacs/lombok.jar")
-   Shotcuts/Key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    <caption class="t-bottom"><span class="table-number">Table 2:</span> java mode key binding</caption>
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">KEY</td>
    <td class="org-left">FUNCTION</td>
    <td class="org-left">DESCRIPTION</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c i</td>
    <td class="org-left">find-implementations</td>
    <td class="org-left">find where sub class definition</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c I</td>
    <td class="org-left">lsp-java-open-super-implementation</td>
    <td class="org-left">find where sub class definition</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC t e</td>
    <td class="org-left">lsp-treemacs-java-deps-list</td>
    <td class="org-left">find projects referenced libs</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c f</td>
    <td class="org-left">formart buffer/region</td>
    <td class="org-left">goto type definition</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c a</td>
    <td class="org-left">lsp-execute-code-action</td>
    <td class="org-left">code action</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c d</td>
    <td class="org-left">lsp-jump-definition</td>
    <td class="org-left">jump to where symbol definition</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c D</td>
    <td class="org-left">lsp-jump-reference</td>
    <td class="org-left">jump to where symbol referenced</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC c o</td>
    <td class="org-left">lsp-java-organize-imports</td>
    <td class="org-left">import require package</td>
    </tr>
    </tbody>
    </table>
-   HotSwarp  
    [hotswapagent](http://hotswapagent.org/mydoc_configuration.html) ，a relacement of jrebel  
    -   DCEVM  
        1.  [download](https://github.com/JetBrains/JetBrainsRuntime/releases?page=6)  [dcevm](https://ssw.jku.at/dcevm/)
        2.  use command run your application `dcevmjava -jar app.jar`
    -   Hotswapagent  
        1.  download lastest hotswapagent [here](https://github.com/HotswapProjects/HotswapAgent/releases)
        2.  replace hotswapagent to $DCEVM\_HOME/lib/hotswap/hotswap-agent.jar
    -   Startup  
        1.  hotswap-agent config.  
            [hotswap-agent.properties](https://github.com/HotswapProjects/HotswapAgent/blob/master/hotswap-agent-core/src/main/resources/hotswap-agent.properties) hotswap-agent.properties place to project&rsquo;s resources directory.  
            
                extraClasspath=target/classes;../longda-archetype-dao/target/classes
                watchResources=../longda-archetype-dao/src/main/resources
                webappDir=
                disabledPlugins=Hibernate, Hibernate3JPA, Hibernate3, Jersey1, Jersey2, MyFaces,
                Mojarra, Omnifaces, ELResolver, WildFlyELResolver, OsgiEquinox, Owb, Proxy, Weld,
                JBossModules, ResteasyRegistry, Deltaspike, GlassFish, Vaadin, Wicket, CxfJAXRS,
                FreeMarker, Undertow
                autoHotswap=true
                spring.basePackagePrefix=pkg.
                LOGGER=info
        2.  startup with dcevm  
            use dcevm jar run your application which locate at $DCEVM\_HOME/bin/java.  
            add java startup parameters for HotswapAgent.  
            
                $dcevmjava -XX:HotswapAgent=fatjar -Xlog:redefine+class*=info -jar app.jar
-   How to upgrade jdtls  
    1.  Customization your own eclipse jdtls project version by replace it&rsquo;s binary pacage.
    2.  Download the lastest jdt-language-server from <https://download.eclipse.org/jdtls/milestones>.
    3.  Replace file to ~/.emacs.d/.local/etc/lsp/eclipse.jdt.ls.

1.  TODO most wanted

    1.  coding
    
        1.  eldoc [lsp-java/issues/432](https://github.com/emacs-lsp/lsp-java/issues/432)


<a id="orga7bf80b"></a>

## TODO Dap-java Usage

I do not use debug for years. So be careful the documentation maybe outdated.I think you need customization by yourself.  

-   Config the debug host and port, add file $usr\_private\_dir/dap-java-config.el.
-   Use \`(setq user-private-dir &ldquo;$usr\_private\_dir/dap-java-config.el&rdquo; )\` make it effective.  
    
        1  (dap-register-debug-template
        2   "user-service"
        3   (list :name "Java Attach"
        4         :type "java"
        5         :request "attach"
        6         :projectName "user-service"
        7         :hostName "127.0.0.1"
        8         :port 1044))
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">KEY</td>
    <td class="org-left">FUNCTION</td>
    <td class="org-left">DESCRIPTION</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, n</td>
    <td class="org-left">dap-next</td>
    <td class="org-left">Breakpoint next</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, b</td>
    <td class="org-left">dap-breakpoint-toggle</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, c</td>
    <td class="org-left">dap-continue</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, r</td>
    <td class="org-left">dap-eval-region</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, a</td>
    <td class="org-left">dap-eval-thing-at-point</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, d</td>
    <td class="org-left">dap-debug</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    
    
    <tr>
    <td class="org-left">, u</td>
    <td class="org-left">dap-ui-repl</td>
    <td class="org-left">&#xa0;</td>
    </tr>
    </tbody>
    </table>


<a id="org0a7637a"></a>

## Ejc-sql Usage

-   The privacy configuration  
    In here you could save any connections in your setting config.  
    But where should the setting located especially for our Emacs config project with a public github repository? There have a privacy path which is excluded in the public repository named **user-private-dir**, You could config your connection&rsquo;s account/password here for safely.
-   Config your particular db connection  
    
        (use-package ejc-sql
            :commands ejc-sql-mode ejc-connect
            :config
            (setq clomacs-httpd-default-port 18090)
            (ejc-create-connection "connection-name"
                                   :classpath      "~/.m2/repository/mysql/mysql-connector-java/8.0.17/
                         mysql-connector-java-8.0.17.jar"
                                   :connection-uri "jdbc:mysql://localhost/user?useSSL=false&user=root&password=pwd"
                                   :separator      "</?\.*>" )
            )
        (provide 'db-work)
-   Write Sql file  
    Before try to use ejc sql, firstly create a sql file which named with a suffix **.sql**, cause emacs will turn on the sql minor mode so that ejc-sql could works well. And then use `SPC e c` to connect a particular database which you have configurated. Emacs will popup a minibuffer listing candidates which show you the **connection-name**.  
    Secondarily, write your testing sql content which surrounded by a tag, cause we have configurated **:separator** by a syntax meaning tag in order to execute a single sql rather than to choose it.For sure you could make any comment with the tag&rsquo;s schema.  
    Further more, you could use delimiter sign for batch execution. the delimiter could customization by any character.  
    Finnaly, use `C-c C-c` to execute it. It&rsquo;s just execute the content which surrounded by a tag in your cusor.  
    
        1  <SELECT name='select all org'>
        2  SELECT * FROM TABLE_ORG
        3  </SELECT>
        4  
        5  <SELECT>
        6  delimiter ;
        7  COMMENT ON COLUMN TABLE_ORG.PROJECT_CODE IS '项目编码';
        8  COMMENT ON COLUMN TABLE_ORG.PERIOD IS '期间';
        9  </SELECT>
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">KEY</td>
    <td class="org-left">FUNCTION</td>
    <td class="org-left">description</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC e c</td>
    <td class="org-left">ejc-connection</td>
    <td class="org-left">choose connection with ivy</td>
    </tr>
    
    
    <tr>
    <td class="org-left">C-c C-c</td>
    <td class="org-left">ejc-execute</td>
    <td class="org-left">execute the sql</td>
    </tr>
    </tbody>
    </table>


<a id="orge3c057d"></a>

## Restclient

Restclient provide a test suite for HTTP REST in Emacs.The official repository here [restclient.el](https://github.com/pashky/restclient.el).  
Yea, a pretty old old project.Fortunately doom emacs have integrated it.We just need open it with `(rest +jq)`.  
**+jq** makes restclient have the ability to parse a particular response which Content-Type equalable application/json.  
The amazing feature is restclient support set variables or make a part of response being a variables which one could as a request part for another HTTP REST.  

Here we take the value from results as a variables which named count.  

    GET https://www.zhihu.com/api/v3/oauth/sms/supported_countries
    -> jq-set-var :count .count

> Only **jq-set-var** could works when the content-type equal to application/json MIME type  

Fortunately we have solution for other mime type, it&rsquo;s restclient-set-var, you could use elisp to parse the response;  

    GET https://www.baidu.com/sugrec
    -> run-hook (restclient-set-var ":queryid" (cdr (assq 'queryid (json-read))))
    Content-Type: application/x-www-form-urlencoded; charset=utf-8

About the variables infomation in current buffer, we could use `C-c Tab` to show them.  


<a id="org84c31b1"></a>

## Company box customize

-   use \`M-x all-the-icons-material\` for checking icon
-   company-icon icon config file: ~/.emacs.d/modules/completion/company/config.el


<a id="org57daba1"></a>

## Eredis Usage

1.  config

    Use eredis firstly we could writen a funtion for a particular redis connection like this.  
    
        (use-package eredis)
        (defun redis-tencent-dev (dbnum)
          (interactive)
          (setq redis-tencent-dev (eredis-connect "tencent.local" 6379))
          (eredis-auth "yourpassword" redis-tencent-dev)
          (eredis-select dbNum)
        )
    
    Then you could use **M-x** ielm execution any redis command.  
    
        (redis-tencent-dev 1)
        (eredis-get "center-bpm:flow-list-count")

2.  send redis command on org mode

    key binding C-c C-c  
    
        ;; select database
        (eredis-select 1)
        ;; query center-bpm:flow-list-count
        (eredis-get "center-bpm:flow-list-count")
        (eredis-org-table-from-keys '("center-bpm:flow-list-count" ))
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-right" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">Key</td>
    <td class="org-right">Value(s)</td>
    <td class="org-left">Type</td>
    </tr>
    
    
    <tr>
    <td class="org-left">center-bpm:flow-list-count</td>
    <td class="org-right">1</td>
    <td class="org-left">string</td>
    </tr>
    </tbody>
    </table>


<a id="org33d7aae"></a>

## Bookmark

-   set a particular location for bookmark  
    
        (setq bookmark-default-file "~/org/org-roam/command/doom/config/bookmark")
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">key</td>
    <td class="org-left">binding</td>
    </tr>
    
    
    <tr>
    <td class="org-left">Spc-Ent</td>
    <td class="org-left">select a bookmark</td>
    </tr>
    
    
    <tr>
    <td class="org-left">Spc b m</td>
    <td class="org-left">set a bookmark</td>
    </tr>
    
    
    <tr>
    <td class="org-left">Spc b M</td>
    <td class="org-left">delete a bookmark</td>
    </tr>
    </tbody>
    </table>


<a id="orgec0c24e"></a>

## Rime Usage

-   <https://github.com/DogLooksGood/emacs-rime> supply this plugin.
-   <https://github.com/rime/plum> for more infomation.
-   The config location at ~/Library/Rime/flypy\_sys.txt
-   Rime input method config at .doom.d/myconfig/rime-config.
-   &rsquo;emacs-module.h&rsquo; file not found  
    
        lib.c:23:10: fatal error: 'emacs-module.h' file not found
          #include <emacs-module.h>
                  ^~~~~~~~~~~~~~~~
    
        cp /opt/homebrew/opt/emacs-plus@29/include/emacs-module.h ~/.doom.d/neoemacs/rime-macos/dist/include


<a id="org20dcf91"></a>

## Libvterm Usage

-   Configuration  
    
    -   fish shell configuration
    
        function vterm_printf;
            if begin; [  -n "$TMUX" ]  ; and  string match -q -r "screen|tmux" "$TERM"; end
                # tell tmux to pass the escape sequences through
                printf "\ePtmux;\e\e]%s\007\e\\" "$argv"
            else if string match -q -- "screen*" "$TERM"
                # GNU screen (screen, screen-256color, screen-256color-bce)
                printf "\eP\e]%s\007\e\\" "$argv"
            else
                printf "\e]%s\e\\" "$argv"
            end
        end
        if [ "$INSIDE_EMACS" = 'vterm' ]
            function clear
                vterm_printf "51;Evterm-clear-scrollback";
                tput clear;
            end
        end
-   Ubuntu  
    
        sudo apt install cmake
        sudo apt install libtool-bin
-   MacOs  
    
        sudo brew install cmake libtool
-   Being with eshell  
    Eshell have a most wanted feature was **quickrun-eshell** which have a fast reload function after shell is runinng,you just use `C-c C-c` to stop it and use **r** to rerun you shell.It&rsquo;s pretty convenient.
-   Key Binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    <colgroup>
    <col  class="org-left" />
    
    <col  class="org-left" />
    
    <col  class="org-left" />
    </colgroup>
    <tbody>
    <tr>
    <td class="org-left">KEY</td>
    <td class="org-left">FUNCTION</td>
    <td class="org-left">DESCRIPTION</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC v v</td>
    <td class="org-left">projectile-run-vterm</td>
    <td class="org-left">open vterm window base on the project root path</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC v p</td>
    <td class="org-left">vterm-send-start</td>
    <td class="org-left">enable vterm screen roll</td>
    </tr>
    
    
    <tr>
    <td class="org-left">SPC v s</td>
    <td class="org-left">vterm-send-stop</td>
    <td class="org-left">disable vterm screen roll</td>
    </tr>
    </tbody>
    </table>


<a id="org96361fe"></a>

## Elpa Offline

rsync -avz rsync://mirrors.tuna.tsinghua.edu.cn/elpa ~/soft/emacs-elpa  

    (setq configuration-layer--elpa-archives
          '(("melpa-cn" . "/soft/emacs-elpa/melpa/")
            ("org-cn"   . "/soft/emacs-elpa/org/")
            ("gnu-cn"   . "/soft/emacs-elpa/gnu/")
            ("marmalade-cn"   . "/soft/emacs-elpa//marmalade/")))


<a id="org0d21365"></a>

## FZF Config

1.  fish config

        set -x FZF_DEFAULT_OPTS "--preview-window 'right:57%'
            --preview 'bat --style=numbers --line-range :300 {}'
            --bind ctrl-y:preview-up,ctrl-e:preview-down,ctrl-b:preview
            -page-up,ctrl-f:preview-page-down,ctrl-u:preview-half-page-
            up,ctrl-d:preview-half-page-down,shift-up:preview-top,shift
            -down:preview-bottom,alt-up:half-page-up,
            alt-down:half-page-down"
        set -x FZF_DEFAULT_COMMAND  'fd --type f --hidden --follow
            --exclude ".git" .
            ".idea" . ".vscode" . "node_modules" .
            "build" . "target" . "classes" . "out" . "class" .
            "*.svg" . "*.puml" . "*.orgids" . "*.css" . "*.DS_Store" '

2.  how to ignore files

    -   add ~/.fdignore  
        
            .DS_Store
            .orgids
            *.svg
            *.puml
            *.css
            *.class
            *.attach
            *.~undo-tree~
            crpt


<a id="org98cef8e"></a>

# Org mode


<a id="org4efebd4"></a>

## Doom org style

A vairty of template about org mode code which one referenced the doom doc style [Preview](http://1.117.167.195/doc/doomorgstyle.html)  
How to use? <https://github.com/vanniuner/doom-org-style>  


<a id="orgdc31578"></a>

## Dot sketchviz

    cd ~/.doom.d/neoemacs/sketchviz/sketch.js
    npm install --save roughjs
    npm i jsdom

-   usage  
    
    ![img](dotsk-demo.svg)


<a id="org3937495"></a>

## Latex PDF setting

1.  install [mactex](https://tug.org/mactex/)
2.  put [elegantpaper.cls](https://github.com/ElegantLaTeX/ElegantPaper/blob/master/elegantpaper.cls) under the org file dir
3.  add the code in the head of your org mode file  
    
        #+LATEX_COMPILER: xelatex
        #+LATEX_CLASS: elegantpaper
        #+OPTIONS: prop:t

4.  [more info](https://www.sheerwill.live/posts/main/20220723211325-vanilla_emacs_with_purcell/)


<a id="org0f7c5cb"></a>

# Alfred

Alfred repeat item  
perference -> Advanced -> Rebuild macOS Metadata.  
alfred -> reload  


<a id="orgb1a7d91"></a>

# Questions


<a id="org14b79b0"></a>

## install ffmpeg

-   brew install ffmpeg


<a id="org0a4ba5f"></a>

## how to install all-the-icons?

-   M-x install-package all-the-icons
-   M-x all-the-icons-install-fonts


<a id="org9394284"></a>

## how to install rime ?

-   M-x install-package rime

unzip rime-1.5.3-osx.zip -d ~/.emacs.d/librime  


<a id="org30a4343"></a>

## how to install vterm?

    cd .emacs.d/.local/straight/build/vterm/
    mkdir -p build
    # install cmake and libtool-bin
    brew install cmake, brew install libtool
    mkdir -p build
    cd build
    cmake ..
    make


<a id="org9f88084"></a>

## lsp-springboot

    mvn -Djdt.js.server.root=/Users/van/.emacs.d/.local/etc/.cache/
    lsp/eclipse.jdt.ls/server/ -Djunit.runner.root=
    /Users/van/.emacs.d/.local/etc/eclipse.jdt.ls/test-runner/
    -Djunit.runner.fileName=junit-platform-console-standalone.jar
    -Djava.debug.root=/Users/van/.emacs.d/.local/etc/.cache/lsp/
    eclipse.jdt.ls/server/bundles clean package
    -Djdt.download.url=http://download.eclipse.org/jdtls/snapshots/
    jdt-language-server-latest.tar.gz -f lsp-java-server-build.pom


<a id="orgcefc8cd"></a>

## useful key setting

-   Change caps\_lock to control if pressed with other keys, to escape if pressed alone.  
    ![img](key-change.png)


<a id="org990d8d1"></a>

## why message showed could not load undo-tree history

    brew install watchexec


<a id="orgf2f3f5c"></a>

## File mode specification error: (file-missing Doing vfork No such file or directory)

When open a Java file this error happen.  
It&rsquo;s because the environment do not content on your GUI Emacs.  
It works well on your termianl environment with start Emacs by Emacs -nw.  
So the solution is change the execution file with the below shell script on MacOs  

-   emacs-plus cp to application dir

    cp -rf /opt/homebrew/opt/emacs-plus@28/Emacs.app/ /Applications/
    mv /Applications/Emacs.app/Contents/MacOS/Emacs Emacs.old

-   /Applications/Emacs.app/Contents/MacOS/Emacs

    #!/usr/local/bin/fish
    /Applications/Emacs.app/Contents/MacOS/Emacs.old


<a id="org4d9429b"></a>

## image dir

    ln -s ~/org/org-roam/image any_where/image


<a id="orgab197df"></a>

# About Logo

edit with: [online-ps-editor](https://ps.gaoding.com/#/), [psd file](./logo.psd)  


<a id="org848a6c8"></a>

# Dependencies

<https://github.com/hlissner/doom-emacs/blob/master/docs/getting_started.org>  

<https://github.com/BurntSushi/ripgrep>  

<https://github.com/junegunn/fzf>  

<https://github.com/kostafey/ejc-sql>  

<https://leiningen.org/>  

<https://plantuml.com/>  

<https://github.com/emacs-lsp/lsp-java>  

<https://projectlombok.org/>  

<https://github.com/DogLooksGood/emacs-rime>  

<https://github.com/be5invis/Sarasa-Gothic>  

<https://github.com/akicho8/string-inflection>  

<https://raw.githubusercontent.com/alibaba/p3c/master/p3c-formatter/eclipse-codestyle.xml>  

<https://www.tug.org/mactex/>  

