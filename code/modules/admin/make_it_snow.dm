/client/proc/make_it_snow()
	set name = "Make It Snow"
	set category = "Fun"

	if(!holder ||!check_rights(R_FUN))
		return

	log_admin("[key_name(usr)] made it snow.")
	message_admins("[key_name_admin(usr)] made it snow.")

	for(var/i in SSweather.active_timers)
		var/datum/timedevent/TE = i
		TE.callBack.InvokeAsync()
		qdel(TE)