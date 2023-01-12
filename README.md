
# Table of Contents

1.  [About](#org19890f5)
2.  [How to install](#orgc28ae0b)
    1.  [Install emacs](#org5594854)
    2.  [Building Emacs](#org0d9be3f)
    3.  [Clone doom-emacs](#orga273fca)
    4.  [Clone neo-emacs](#org28a72b7)
    5.  [Doom Install](#org289c901)
3.  [How to update](#orge41e0e5)
4.  [Private setting](#org2027954)
5.  [Lsp-java Usage](#orgf8d24a3)
6.  [Dap-java Usage](#org6dc47a1)
7.  [Company box customize](#org07d94d9)
8.  [Ejc-sql Usage](#org398f6c1)
9.  [Eredis Usage](#org96080d8)
    1.  [connect setting](#orgc69b4c1)
    2.  [send redis command on org mode](#orga8db75f)
10. [Bookmark](#orga27e0ee)
11. [Rime Usage](#orge2d3b2c)
12. [Libvterm Usage](#orgabe7930)
13. [Elpa Offline](#org35906fe)
14. [FZF Config](#org82ddd89)
    1.  [fish config](#org6ddc100)
    2.  [how to ignore files](#orgade9e0e)
15. [Latex PDF setting](#org5b954fa)
16. [Alfred](#orgce0f043)
17. [Questions](#org0657f86)
    1.  [install ffmpeg](#org155196d)
    2.  [how to install all-the-icons?](#org1d5c434)
    3.  [how to install rime ?](#orge12de0f)
    4.  [how to install vterm?](#org473fff1)
    5.  [lsp-springboot](#orgb555263)
    6.  [useful key setting](#org855394d)
    7.  [why message showed could not load undo-tree history](#orgd3de0ff)
    8.  [File mode specification error: (file-missing Doing vfork No such file or directory)](#org1418763)
18. [Dependencies](#orge6e25c8)

![img](./neo-emacs.gif)  


<a id="org19890f5"></a>

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


<a id="orgc28ae0b"></a>

# How to install


<a id="org5594854"></a>

## Install emacs

Choose your operation system and install it.  

-   [gnu-emacs](https://www.gnu.org/software/emacs/) is the official emacs client.
-   [emacs-plus](https://github.com/d12frosted/homebrew-emacs-plus) is the best choice to run NeoEmcas.
-   export EMACS=/Applications/Emacs.app/Contents/MacOS/Emacs, this depends on your installation path.


<a id="org0d9be3f"></a>

## Building Emacs

    1  git clone git://git.savannah.gnu.org/emacs.git
    2  cd emacs
    3  git checkout emacs-28
    4  brew install  libxml2
    5  make configure
    6  ./configure --with-native-compilation --with-modern-papirus-icon --with-no-titlebar
    7  make -j4
    8  make install
    9  open nextstep/Emacs.app


<a id="orga273fca"></a>

## Clone doom-emacs

    1  git clone --depth 1 https://github.com/doomemacs/doomemacs ~/.emacs.d


<a id="org28a72b7"></a>

## Clone neo-emacs

    git clone https://github.com/vanniuner/neo-emacs.git ~/.doom.d/


<a id="org289c901"></a>

## Doom Install

Make sure that you have some setting in your terminal environment.  

Set up a vpn if you need it.  

    export http_proxy="ip:port"
    export https_proxy="ip:port"

Set your emacs cmd for doom install.  

    export EMACS= $YOUR EMACS CMD PATH$

At last run below, this will take few minutes. And it depends on the quality of your network.  

    ~/.emacs.doom/bin/doom install


<a id="orge41e0e5"></a>

# How to update

    export EMACS=/Applications/Emacs.app/Contents/MacOS/EMACS-JAVA-IDE
    sh ~/.emacs.d/bin/doom upgrade
    sh ~/.emacs.d/bin/doom install
    sh ~/.emacs.d/bin/doom sync


<a id="org2027954"></a>

# Private setting

Changing config in the config.el.  

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


</table>

<!-- This HTML table template is generated by emacs 28.2.50 -->
<table border="1">
  <tr>
    <td align="left" valign="top">
      &nbsp;rg-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/rg"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;rg&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;fd-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/fd"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;fd&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;dot-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/opt/homebrew/bin/dot"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;dot&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-maven-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/.m2/settings.xml"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;maven&nbsp;setting&nbsp;path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;pdflatex-exec-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"/Library/TeX/texbin/pdflatex"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;pdflatex&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;org-directory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/org/"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;org&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;org-roam-directory&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/org/org-roam"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;org&nbsp;roam&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;root&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-java-java-path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;java11&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;exec&nbsp;path&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;doom-font&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;font&nbsp;setting&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;display-line-numbers-type&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;nil&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;show&nbsp;line&nbsp;number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;rime-user-data-dir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/Library/Rime/"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;rime&nbsp;config&nbsp;input&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;rime-librime-root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/.doom.d/myconfig/rime-macos/dist"&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;emacs-rime/blob/master/&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;emacs-module-root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;/opt/homebrew/opt/emacs-plus@28/include&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;emcas&nbsp;module&nbsp;root&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;node-bin-dir&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;"~/node-v16.14.0/bin"&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;node&nbsp;exec&nbsp;path&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
  <tr>
    <td align="left" valign="top">
      &nbsp;lsp-java-jdt-download-url&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;http://1.117.167.195/download&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
    <td align="left" valign="top">
      &nbsp;jdt-server&nbsp;URL&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </td>
  </tr>
</table>


<a id="orgf8d24a3"></a>

# Lsp-java Usage

-   generate .project & .classpath files  
    
        mvn eclipse:clean eclipse:eclipse
-   support projectlombok plugin
-   Key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.2.50 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-goto-implementation&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;find&nbsp;where&nbsp;sub&nbsp;class&nbsp;definition&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;M-o&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-open-super-implementation&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;goto&nbsp;where&nbsp;super&nbsp;class&nbsp;definition&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;M-t&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-treemacs-references&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;find&nbsp;where&nbsp;your&nbsp;code&nbsp;be&nbsp;referenced&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;s-d&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-goto-type-definition&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;goto&nbsp;type&nbsp;definition&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;f&nbsp;r&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-format-region&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;format&nbsp;the&nbsp;region&nbsp;java&nbsp;code&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;f&nbsp;b&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-format-buffer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;format&nbsp;the&nbsp;whole&nbsp;file&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;m&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-add-unimplemented-methods&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;add&nbsp;function&nbsp;code&nbsp;template&nbsp;for&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;unimplemented&nbsp;methods&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;;&nbsp;i&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;lsp-java-organize-imports&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;import&nbsp;require&nbsp;package&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
          &nbsp;or&nbsp;delete&nbsp;some&nbsp;unuse&nbsp;package&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>
-   how to upgrade  
    1.  download the lastest jdt-language-server from <https://download.eclipse.org/jdtls/milestones>
    2.  replace file to ~/.emacs.d/.local/etc/lsp/eclipse.jdt.ls
-   error about vfork  
    1.  go back for doom emacs  
        git reset &#x2013;hard c44bc81a05f3758ceaa28921dd9c830b9c571e61
    2.  set the sbcl path  
        
            (setq inferior-lisp-program "/opt/homebrew/bin//sbcl")


<a id="org6dc47a1"></a>

# Dap-java Usage

-   Config the debug host and port, add file $usr\_private\_dir/dap-java-config.el.
-   Use \`(setq user-private-dir &ldquo;$usr\_private\_dir/dap-java-config.el&rdquo; )\` make it effective.  
    
        1      (dap-register-debug-template
        2      "user-service"
        3      (list :name "Java Attach"
        4              :type "java"
        5              :request "attach"
        6              :projectName "user-service"
        7              :hostName "127.0.0.1"
        8              :port 1044))
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.2.50 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;n&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-next&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;Breakpoint&nbsp;next&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;b&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-breakpoint-toggle&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-continue&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;r&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-eval-region&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;a&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-eval-thing-at-point&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;d&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-debug&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;,&nbsp;u&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;dap-ui-repl&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="org07d94d9"></a>

# Company box customize

-   use \`M-x all-the-icons-material\` for checking icon
-   company-icon icon config file: ~/.emacs.d/modules/completion/company/config.el


<a id="org398f6c1"></a>

# Ejc-sql Usage

-   Config your db connection in the $usr\_private\_dir/db-work.el.  
    
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

-   sql file  
    
         1  
         2       <SELECT>
         3       SELECT * FROM TABLE_ORG
         4       </SELECT>
         5  
         6       <SELECT>
         7       delimiter ;
         8       COMMENT ON COLUMN TABLE_ORG.PROJECT_CODE IS '项目编码';
         9       COMMENT ON COLUMN TABLE_ORG.PERIOD IS '期间';
        10       </SELECT>
-   key binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.2.50 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;description&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;e&nbsp;c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;ejc-connection&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;choose&nbsp;connection&nbsp;with&nbsp;ivy&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;C-c&nbsp;C-c&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;ejc-execute&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;execute&nbsp;the&nbsp;sql&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="org96080d8"></a>

# Eredis Usage


<a id="orgc69b4c1"></a>

## connect setting

**M-x** ielm  

    (use-package eredis)
    (setq rp (eredis-connect "your redis ip" 6379))
    (eredis-auth "pwd" rp)


<a id="orga8db75f"></a>

## send redis command on org mode

key binding C-c C-c  

    ;; select database
    (eredis-select 1)
    ;; query center-bpm:flow-list-count
    (eredis-get "center-bpm:flow-list-count")

\#+begin\_src lisp  

<table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">


<colgroup>
<col  class="org-left" />

<col  class="org-right" />

<col  class="org-left" />
</colgroup>
<thead>
<tr>
<th scope="col" class="org-left">Key</th>
<th scope="col" class="org-right">Value(s)</th>
<th scope="col" class="org-left">Type</th>
</tr>
</thead>

<tbody>
<tr>
<td class="org-left">center-bpm:flow-list-count</td>
<td class="org-right">1</td>
<td class="org-left">string</td>
</tr>
</tbody>
</table>


<a id="orga27e0ee"></a>

# Bookmark

-   the bookmark file location :~/.emacs.d/.local/etc/bookmarks

    (setq bookmark-default-file "~/org/org-roam/command/doom/config/bookmark")


<a id="orge2d3b2c"></a>

# Rime Usage

-   <https://github.com/DogLooksGood/emacs-rime> supply this plugin.
-   <https://github.com/rime/plum> for more infomation.
-   some rime input method config at .doom.d/myconfig/rime-config.


<a id="orgabe7930"></a>

# Libvterm Usage

-   Ubuntu  
    
        sudo apt install cmake
        sudo apt install libtool-bin
-   MacOs  
    
        sudo brew install cmake libtool
-   Key Binding  
    
    <table border="2" cellspacing="0" cellpadding="6" rules="groups" frame="hsides">
    
    
    </table>
    
    <!-- This HTML table template is generated by emacs 28.2.50 -->
    <table border="1">
      <tr>
        <td align="left" valign="top">
          &nbsp;KEY&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;FUNCTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;DESCRIPTION&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;v&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;projectile-run-vterm&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;open&nbsp;vterm&nbsp;window&nbsp;base&nbsp;on&nbsp;the&nbsp;project&nbsp;root&nbsp;path&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;p&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;vterm-send-start&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;enable&nbsp;vterm&nbsp;screen&nbsp;roll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
      <tr>
        <td align="left" valign="top">
          &nbsp;SPC&nbsp;v&nbsp;s&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;vterm-send-stop&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
        <td align="left" valign="top">
          &nbsp;disable&nbsp;vterm&nbsp;screen&nbsp;roll&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </td>
      </tr>
    </table>


<a id="org35906fe"></a>

# Elpa Offline

rsync -avz rsync://mirrors.tuna.tsinghua.edu.cn/elpa ~/soft/emacs-elpa  

    (setq configuration-layer--elpa-archives
          '(("melpa-cn" . "/soft/emacs-elpa/melpa/")
            ("org-cn"   . "/soft/emacs-elpa/org/")
            ("gnu-cn"   . "/soft/emacs-elpa/gnu/")
            ("marmalade-cn"   . "/soft/emacs-elpa//marmalade/")))


<a id="org82ddd89"></a>

# FZF Config


<a id="org6ddc100"></a>

## fish config

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


<a id="orgade9e0e"></a>

## how to ignore files

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


<a id="org5b954fa"></a>

# Latex PDF setting

1.  install [mactex](https://tug.org/mactex/)
2.  put [elegantpaper.cls](https://github.com/ElegantLaTeX/ElegantPaper/blob/master/elegantpaper.cls) under the org file dir
3.  add the code in the head of your org mode file  
    
        #+LATEX_COMPILER: xelatex
        #+LATEX_CLASS: elegantpaper
        #+OPTIONS: prop:t

4.  [more info](https://www.sheerwill.live/posts/main/20220723211325-vanilla_emacs_with_purcell/)


<a id="orgce0f043"></a>

# Alfred

Alfred repeat item  
perference -> Advanced -> Rebuild macOS Metadata.  
alfred -> reload  


<a id="org0657f86"></a>

# Questions


<a id="org155196d"></a>

## install ffmpeg

-   brew install ffmpeg


<a id="org1d5c434"></a>

## how to install all-the-icons?

-   M-x install-package all-the-icons
-   M-x all-the-icons-install-fonts


<a id="orge12de0f"></a>

## how to install rime ?

-   M-x install-package rime

unzip rime-1.5.3-osx.zip -d ~/.emacs.d/librime  


<a id="org473fff1"></a>

## how to install vterm?

    cd .emacs.d/.local/straight/build/vterm/
    mkdir -p build
    # install cmake and libtool-bin
    brew install cmake, brew install libtool
    mkdir -p build
    cd build
    cmake ..
    make


<a id="orgb555263"></a>

## lsp-springboot

    mvn -Djdt.js.server.root=/Users/van/.emacs.d/.local/etc/.cache/
    lsp/eclipse.jdt.ls/server/ -Djunit.runner.root=
    /Users/van/.emacs.d/.local/etc/eclipse.jdt.ls/test-runner/
    -Djunit.runner.fileName=junit-platform-console-standalone.jar
    -Djava.debug.root=/Users/van/.emacs.d/.local/etc/.cache/lsp/
    eclipse.jdt.ls/server/bundles clean package
    -Djdt.download.url=http://download.eclipse.org/jdtls/snapshots/
    jdt-language-server-latest.tar.gz -f lsp-java-server-build.pom


<a id="org855394d"></a>

## useful key setting

-   Change caps\_lock to control if pressed with other keys, to escape if pressed alone.  
    ![img](key-change.png)


<a id="orgd3de0ff"></a>

## why message showed could not load undo-tree history

    brew install watchexec


<a id="org1418763"></a>

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


<a id="orge6e25c8"></a>

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

