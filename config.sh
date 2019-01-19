AUTOMOUNT=true
PROPFILE=false
POSTFSDATA=true
LATESTARTSERVICE=true
print_modname() {
  ui_print "*******************************"
  ui_print "*  Log Catcher Magisk Module  *"
  ui_print "*        By MlgmXyysd.        *"
  ui_print "*   QQ Chat Group 855219808   *"
  ui_print "*******************************"
}
REPLACE="
"
set_permissions() {
  set_perm_recursive  $MODPATH  0  0  0755  0644
}
