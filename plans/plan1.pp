# @summary
# A plan that runs a script

plan ossg::plan1(
    TargetSpec $targets,

) {
   $puppet_master = "puppet.lan"
   $action = "status"
   $name = "cockpit"

   out::message("Backing up ${puppet_master}")
   #run_task('exec', $puppet_master, 'command' => "hostname" )

   #run_task('service', 'cockpit'=> "status", 'name' => "cockpit" )
   run_task('service', $puppet_master, 'action' => "status", 'name' => "cockpit" )
   
  }

# puppet task run service action=status name=cockpit --nodes rhel8.lan
# bolt task run service action=status name=cockpit --targets linux
