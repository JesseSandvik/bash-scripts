
bash_shell_information=(
    "/usr/bin/bash"
    "$HOME/.bashrc"
    "BASH"
);
bash_user_shell_binary_path="/usr/bin/bash";
bash_user_shell_config_file_path="$HOME/.bashrc";

zsh_shell_information=(
    "/usr/bin/zsh"
    "$HOME/.zshrc"
    "ZSH"
);

zsh_user_shell_binary_path="/usr/bin/zsh";
zsh_user_shell_config_file_path="$HOME/.zshrc";

# NOTE: If you want/need to add more binary path/config file combinations, make sure you put them in the same index for each array

# All available supported binary path options/shells
supported_shell_binary_path_options=("$bash_user_shell_binary_path" "$zsh_user_shell_binary_path");

# The shell configuration file path associated with the shell from the above array
supported_shell_config_file_path_options=("$bash_user_shell_config_file_path" "$zsh_user_shell_config_file_path");
