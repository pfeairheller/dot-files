
PATH0=`echo $PATH | sed -e 's#/usr/local/bin:##'`
PATH=~/bin:/usr/local/bin:~/local/remote-links:$PATH0

#iAgentPid=`ps aux | grep -E "${USER}.*ssh-agent"|grep -v grep|awk '{print $2}'`
#AgentFile=~/.ssh-agent-env
#LoginKey=~/.ssh/id_rsa.$USER
#if [[ -z ${AgentPid}  ]]; then ssh-agent > ${AgentFile}; fi
#if [[ -f ${AgentFile} ]]; then . ${AgentFile}; fi
#if ! ssh-add -l | grep "${LoginKey}" >/dev/null ; then sa ; fi

#export SVNC360="svn+ssh://svn.clickequations.net/var/lib/repos"
#export SVNROOT="svn+ssh://svn.clickequations.net/var/lib/repo_clickeq"
export ANT_OPTS="-Xmx768m -XX:MaxPermSize=512m"
export ANT_HOME=/usr/share/ant
export FLEX_SDK_HOME=~/opt/flex-sdk-4.1
export PATH="~/opt/vert.x-2.1M1/bin:$FLEX_SDK_HOME/bin:/Users/pfeairheller/opt/apache-maven-3.1.1/bin:/opt/subversion/bin:$PATH0"
export M2_HOME=/Users/pfeairheller/opt/apache-maven-3.1.1
export PATH="/usr/local/git/bin:/usr/local/bin:/usr/local/sbin:/usr/local/mysql/bin:$PATH"
export PS1="[\T][$:\w] "
export RUBYOPT=rubygems
export SSL_CERT_FILE=/opt/local/etc/certs/cacert.pem

export RACK_ENV=development
export RAILS_ENV=development
export GOROOT=/usr/local/go
export PATH=$PATH:$GOROOT/bin
export GOPATH=~/git_root/go
export PATH=~/bin:/usr/local/bin:$GOPATH/bin:$PATH
export AWS_RDS_HOME=~/opt/RDSCli-1.14.001
export PATH=~/opt/RDSCli-1.14.001/bin:$PATH
##
# Your previous /Users/pfeairheller/.bash_profile file was backed up as /Users/pfeairheller/.bash_profile.macports-saved_2010-09-06_at_19:28:13
##

# MacPorts Installer addition on 2010-09-06_at_19:28:13: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

export PORT=3000
export RACK_ENV=development
export RAILS_ENV=development

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
