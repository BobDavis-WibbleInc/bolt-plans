plan bdproj::myplan(
    TargetSpec $targets,
) {
  
  $puppet_master = "puppet.lan"
  out::message("Backing up ${targets}")

  run_task('exec', $puppet_master, 'command' => "hostname" )
}
