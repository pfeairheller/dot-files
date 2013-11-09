export PS1="[\T][\$:\w] "
PATH0=`echo $PATH | sed -e 's#/usr/local/bin:##'`
GOPATH=~/git_root/go
PATH=~/bin:/usr/local/bin:$GOPATH:$PATH0

#iAgentPid=`ps aux | grep -E "${USER}.*ssh-agent"|grep -v grep|awk '{print $2}'`
#AgentFile=~/.ssh-agent-env
#LoginKey=~/.ssh/id_rsa.$USER
#if [[ -z ${AgentPid}  ]]; then ssh-agent > ${AgentFile}; fi
#if [[ -f ${AgentFile} ]]; then . ${AgentFile}; fi
#if ! ssh-add -l | grep "${LoginKey}" >/dev/null ; then sa ; fi

#export SVNC360="svn+ssh://svn.clickequations.net/var/lib/repos"
#export SVNROOT="svn+ssh://svn.clickequations.net/var/lib/repo_clickeq"
export ANT_OPTS="-Xmx768m -XX:MaxPermSize=512m"
export FLEX_HOME=~/opt/flex-sdk-4.1
export PATH="$FLEX_SDK_HOME/bin:/Users/pfeairheller/opt/apache-maven-2.2.1/bin:/opt/subversion/bin:$PATH"
export M2_HOME=/Users/pfeairheller/opt/apache-maven-2.2.1
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PS1="[\T][$:\w] "
