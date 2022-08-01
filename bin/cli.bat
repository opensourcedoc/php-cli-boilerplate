@echo off
rem Wrapper for PHP CLI Boilerplate


rem Check whether PHP is available on the system.
where php >nul || (
    echo No PHP on the system >&2
    exit /b 1
)

rem Get the path of current batch script.
set cwd=%~dp0
rem Get the directory to our PHP script.
set libexec=%cwd%..\libexec

rem Run the PHP script and pass command-line arguments to it.
php %libexec%\cli.php %*
