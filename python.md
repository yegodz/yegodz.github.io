##  Python environment

1. On MacOS always install the latest versions of `python2` and `python3` from `python.org` first. This will install `python` as a framework and is recommended for development instead of the default `python 2.7.10` that is preinstalled on MacOS
2. Use `pipenv` for installing packages
3. `pipenv` will create a virtual environment and `Pipfile` and all packages installed will be in that environment. Think of a `Pipfile` like `package.json`
4. Pipenv searches recursively up the folder hierarchy to find a pipfile
5. Add `export PIPENV_MAX_DEPTH=5` to the `.bash_profile`
6. Add `alias py2=”pipenv run python2”` to run `python2` in the current `pipenv` environment
7. If you want to create a new `Pipenv` in the folder (and not use once that is higher up in the hierarchy), do `$> touch Pipfile && pipenv install` 
8. To create a `pipenv` with version 3 or two use `pipenv --three` or `pipenv --two`
9. To delete an environment, `pipenv clean , pipenv --rm`
10. In any folder type `pipenv --where` to see where it is getting its `Pipfile` from


## Debugging in VS Code
Make sure the vscode workspace is the same as the folder where the `Pipenv` file is. That way it will pick up the environment for debugging
In `launch.json` set the following 

```    {
      "name": "Python: Current File",
      "type": "python",
      "request": "launch",
      "program": "${file}",
      "cwd": "${fileDirname}",
      "stopOnEntry": true
    },
```

## Running Jupyter

1. Install Jupyter using `pipenv` 
```
pipenv install jupyter
```
2. Run jupyter using 
```
pipenv run jupyter notebook
```