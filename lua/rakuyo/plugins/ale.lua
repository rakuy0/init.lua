return {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_cpp_cc_options = '-std=c++20 -Wall -Wextra -Weffc++ -Wsign-conversion'
        g.ale_warn_about_trailing_blank_lines = 1
        g.ale_warn_about_trailing_whitespace = 1
        g.ale_pycodestyle_options = '--max-line-length=160 --select E111,E101,E201,E202,E203,E221,E222,E223,E224,E225,E226,E227,E228,E231,E241,E242,E251,E303,E304,E502,E711,E712,E713,E714,E721,E741,E742,E743,W191,W291,W293,W292,W391,W602,W603'
        g.ale_linters = {
            python = {'pycodestyle', 'flake8', 'mypy', 'pylint'},
        }

        g.ale_linters_ignore = {
            cpp = { 'cc' }
        }

        g.ale_cpp_cc_options = "-std=c++20 -Wall"
        --g.ale_cpp_clangd_options = "-std=c++20 -Wall"

        g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
        g.ale_use_neovim_diagnostics_api = 1
        -- maybe?
        -- let g:ale_disable_lsp = 1

        -- g:ale_lint_on_save = 1
        g.ale_python_pylint_options = '--rcfile /home/rakuyo/.pylintrc'
        g.ale_python_flake8_executable = '/home/rakuyo/.pyenv/shims/flake8'
        -- g.ale_python_flake8_change_directory = 0
        g.ale_python_flake8_options = '--config ~/.flake8.cfg'

        g.ale_typescript_standard_executable = 'standard'

    end
}
