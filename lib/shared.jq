def path2pexp($v):
  $v | reduce .[] as $segment (""; . + ($segment | if type == "string" then ".\"" + . + "\"" else "[\(.)]" end));
