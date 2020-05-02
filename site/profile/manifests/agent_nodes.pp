class profile::agent_nodes {
  include dockeragent
  dockeragent:: {'web.puppet.vm':}
  dockeragent:: {'db.puppet.vm':}
}
