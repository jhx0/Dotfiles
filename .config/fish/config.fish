set -U fish_greeting
set -U fish_prompt_pwd_dir_length 0

function fish_prompt
	set_color -o FF5549; echo -n (hostname); echo -n " "; set_color normal
	set_color -o 55FFF6; echo -n (prompt_pwd); echo -n " "; set_color normal
	set_color -o FF5549; echo -n '$ '; set_color normal
end
