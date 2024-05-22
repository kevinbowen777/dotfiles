/*
Place/link this file in the current Firefox root directory.
To determine exact location, see about:profiles with Firefox.
Reference: http://kb.mozillazine.org/Links_to_local_pages_do_not_work
Created: 20240520
*/
user_pref("capability.policy.policynames", "localfilelinks");
user_pref("capability.policy.localfilelinks.sites", "https://testing.cool");
user_pref("capability.policy.localfilelinks.checkloaduri.enabled", "allAccess");
