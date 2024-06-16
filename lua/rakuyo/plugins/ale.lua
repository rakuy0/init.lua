return {
    'dense-analysis/ale',
    config = function()
        -- Configuration goes here.
        local g = vim.g

        g.ale_sign_column_always = 1
        g.ale_python_pylint_options = '--rcfile /home/rakuyo/.pylintrc'
        g.ale_python_flake8_executable = '/home/rakuyo/.pyenv/shims/flake8'
        g.ale_python_flake8_change_directory = 0
        g.ale_python_flake8_options = '--config ~/.flake8.cfg'

        g.ale_typescript_standard_executable = 'standard'

    end
}
