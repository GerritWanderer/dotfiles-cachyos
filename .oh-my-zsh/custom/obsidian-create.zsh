oc() {
  local note_name="$1"
  local content="$2"
  local template_file="$HOME/Workspace/notes.local/99-extras/templates/metatags.md"
  
  if [[ -f "$template_file" ]]; then
    local template=$(cat "$template_file")
    obsidian-cli create "01-Wildflower Field/$note_name" --content "${template}

${content}" --open
  else
    obsidian-cli create "01-Wildflower Field/$note_name" --content "$content" --open
  fi
}

od() {
  obsidian-cli daily
}
