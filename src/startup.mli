val panic : string -> 'a

val setup_logger : bool -> string option -> Lwt_log.template -> unit Lwt.t

val load_daemon_config : string -> Vyconf_config.t

val check_dirs : Directories.t -> unit

val create_socket : string -> Lwt_unix.file_descr Lwt.t

val create_server :
    (Lwt_unix.file_descr * Lwt_unix.sockaddr -> unit Lwt.t) ->
    Lwt_unix.file_descr -> unit -> 'a Lwt.t

val load_config : string -> (Config_tree.t, string) result

val load_config_failsafe : string -> string -> Config_tree.t

val load_interface_definitions : string -> (Reference_tree.t, string) result
