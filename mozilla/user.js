// @name: user.js
// @created: 20260327
// @updated: 20260704
//(https://www.reddit.com/r/firefox/comments/1obbrvz/how_to_completely_get_rid_of_the_ai_stuff/nki10g9/), though it might not completely disable all features (https://bugzilla.mozilla.org/show_bug.cgi?id=1971973#c11)
//
user_pref("browser.compactmode.show", true);
user_pref("widget.gtk.legacy-cursors.enabled", true);
user_pref("extensions.update.enabled", true);
//
user_pref("browser.ml.enable", false); // general switch for machine learning features in Firefox
user_pref("browser.ml.chat.enabled", false); // AI Chatbot (https://docs.openwebui.com/tutorials/integrations/firefox-sidebar/#additional-about-settings)
user_pref("browser.ml.chat.sidebar", false);
user_pref("browser.ml.chat.shortcuts", false);
user_pref("browser.ml.chat.menu", false); // remove "Ask a chatbot" from tab context menu
user_pref("browser.ml.chat.page", false); // remove option from page context menu
user_pref("browser.ml.chat.page.footerBadge", false);
user_pref("browser.ml.chat.page.menuBadge", false);
user_pref("browser.ml.linkPreview.enabled", false);
user_pref("browser.ml.pageAssist.enabled", false);
user_pref("browser.ml.smartAssist.enabled", false);
user_pref("extensions.ml.enabled", false); // might only be relevant for app developers
user_pref("browser.tabs.groups.smart.enabled", false); // "Use AI to suggest tabs and a name for tab groups" in settings
user_pref("browser.tabs.groups.smart.userEnabled", false);
user_pref("pdfjs.enableAltTextModelDownload", false); // "This prevents downloading the AI model unless the user opts in (by enabling the toggle to "Create alt text automatically" from "Image alt text settings" when viewing a PDF)"
user_pref("pdfjs.enableGuessAltText", false); // (disabling this might be redundant when AltTextModelDownload is disabled)
// non-AI, disabling the alt-text-in-pdf feature entirely
// Allow links to local pages to work
// Reference: https://kb.mozillazine.org/Links_to_local_pages_do_not_work
user_pref("pdfjs.enableAltText", false);
user_pref("pdfjs.enableAltTextForEnglish", false);
user_pref("capability.policy.policynames", "localfilelinks");
user_pref("capability.policy.localfilelinks.sites", "https://testing.cool");
user_pref("capability.policy.localfilelinks.checkloaduri.enabled", "allAccess");

