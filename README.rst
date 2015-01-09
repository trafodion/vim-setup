.. # @@@ START COPYRIGHT @@@
   #
   # (C) Copyright 2015 Hewlett-Packard Development Company, L.P.
   #
   #  Licensed under the Apache License, Version 2.0 (the "License");
   #  you may not use this file except in compliance with the License.
   #  You may obtain a copy of the License at
   #
   #      http://www.apache.org/licenses/LICENSE-2.0
   #
   #  Unless required by applicable law or agreed to in writing, software
   #  distributed under the License is distributed on an "AS IS" BASIS,
   #  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   #  See the License for the specific language governing permissions and
   #  limitations under the License.
   #
   # @@@ END COPYRIGHT @@@

=============================
vim-setup README
=============================

.. contents::

About vim-setup
***************

Compilation of various setup scripts for VIM


Installation
************

To use these files with VIM you will need to do the following :

* Copy these files to $HOME/.vim or to the proper system-wide location
* Enable them with the command ``filetype plugin indent on`` in your $HOME/.vimrc file.

Puppet syntax highlighting scripts for Vim
==========================================

Includes the following files ``*/puppet.vim``


Python syntax highlighting script for Vim
=========================================

Includes the following files:

* ``folding-ideas/*``
* ``syntax/python.vim``
* This section (Puppet syntax highlighting scripts for Vim) of this
  ``README.rst`` file

About
-----

Enhanced version of the original Python syntax highlighting script. Based on
``python.vim`` from Vim 6.1 distribution by Neil Schemenauer (nas at python dot
ca). Check also `python.vim page on vim.org
<http://www.vim.org/scripts/script.php?script_id=790>`_.

Please use the following channels for reporting bugs, offering suggestions or
feedback:

- python.vim issue tracker: https://github.com/hdima/python-syntax/issues
- Email: Dmitry Vasiliev (dima at hlabs.org)
- Send a message or follow me for updates on Twitter: `@hdima
  <https://twitter.com/hdima>`__

Features
--------

Changes from the original ``python.vim`` are:

- Added support for Python 3 syntax highlighting
- Added ``:Python2Syntax`` and ``:Python3Syntax`` commands which allow to
  switch between Python 2 and Python 3 syntaxes respectively without
  reloads/restarts
- Updated strings highlighting
- Enhanced special symbols highlighting inside strings
- Enhanced highlighting of numeric constants
- Added optional highlighting for %-formatting inside strings
- Added highlighting for magic comments: source code encoding and #!
  (executable) strings
- Added highlighting for new exceptions and builtins
- Added highlighting for doctests
- Added highlighting for new ``@decorator`` syntax introduced in Python 2.4a2
- Added highlighting for the following errors:

  - invalid symbols in source file
  - mixing spaces and tabs
  - invalid numeric constants
  - invalid %-formatting inside strings
  - invalid variable names
  - trailing spaces (triggered by the ``python_highlight_space_errors`` option)

Some of these features was later backported into the original ``python.vim``.

Script options
--------------

There are two commands to enable or disable an option:

``:let OPTION_NAME = 1``
  Enable option
``:let OPTION_NAME = 0``
  Disable option

For example to enable all syntax highlighting features you can place the
following command in your ``~/.vimrc`` script::

  let python_highlight_all = 1

Option and commands to select Python version
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

``python_version_2``
  Enable highlighting for Python 2 (Python 3 highlighting is enabled by
  default). Can also be set as a local to buffer ``b:python_version_2``
  variable.

The following local to buffer commands can be used to switch between two
highlighting modes:

``:Python2Syntax``
  Switch to Python 2 highlighting mode
``:Python3Syntax``
  Switch to Python 3 highlighting mode

Options used by the script
~~~~~~~~~~~~~~~~~~~~~~~~~~

``python_highlight_builtins``
  Highlight builtin functions and objects
``python_highlight_builtin_objs``
  Highlight builtin objects only
``python_highlight_builtin_funcs``
  Highlight builtin functions only
``python_highlight_exceptions``
  Highlight standard exceptions
``python_highlight_string_formatting``
  Highlight ``%`` string formatting
``python_highlight_string_format``
  Highlight syntax of ``str.format`` syntax
``python_highlight_string_templates``
  Highlight syntax of ``string.Template``
``python_highlight_indent_errors``
  Highlight indentation errors
``python_highlight_space_errors``
  Highlight trailing spaces
``python_highlight_doctests``
  Highlight doc-tests
``python_print_as_function``
  Highlight ``print`` statement as function for Python 2
``python_highlight_file_headers_as_comments``
  Highlight shebang and coding headers as comments
``python_highlight_all``
  Enable all the options above. *NOTE: This option don't override any
  previously set options*
``python_slow_sync``
  Can be set to 0 for slow machines

Contributors
------------

List of the contributors in alphabetical order:

- `Andrea Riciputi <https://github.com/mrrech>`_
- Anton Butanaev
- Caleb Adamantine
- `David Briscoe <https://github.com/idbrii>`_
- `Elizabeth Myers <https://github.com/Elizafox>`_
- `Jeroen Ruigrok van der Werven <https://github.com/ashemedai>`_
- `John Eikenberry <https://github.com/eikenb>`_
- `Marc Weber <https://github.com/MarcWeber>`_
- `Pedro Algarvio <https://github.com/s0undt3ch>`_
- `Victor Salgado <https://github.com/mcsalgado>`_
- `Will Gray <https://github.com/graywh>`_
- `Yuri Habrusiev <https://github.com/yuriihabrusiev>`_


vim-python-pep8-indent
======================

Includes the following files : ``indent/python.vim``

This small script modifies vim_'s indentation behavior to comply with PEP8_ and my aesthetic preferences.
Most importantly::

   foobar(foo,
          bar)

and::

   foobar(
      foo,
      bar
   )


Notes
-----

Please note that Kirill Klenov's python-mode_ ships its own version of this bundle.
Therefore, if you want to use this version specifically, you’ll have to disable python-mode’s using:

.. code-block:: vim

   let g:pymode_indent = 0


License and Authorship
----------------------

This script is based on one from vim’s official `script repo`_  that was *not* originally written by me.
Unfortunately the indentation was off by one character in one case and the script hasn’t been updated since 2005.

Even more unfortunately, I wasn't able to reach any of the original authors/maintainers:
**David Bustos** and **Eric Mc Sween**.

So I fixed the annoyance it with the help of `Steve Losh`_ and am putting it out here so you don’t have to patch the original yourself.
The original patch is still available here_.

Over the time a lot more improvements have been contributed_ by `generous people`_.

I’d like to thank the original authors here for their work and release it hereby to the *Public Domain* (using the CC0_ licence) since I hope that would be in their spirit.
If anyone with a say in this objects, please let me_ know immediately.
Also, if someone is in contact with one of them, I would appreciate being introduced.

While my Vimscript_ skills are still feeble, I intend to maintain it for now.
This mainly means that I'll triage through bugs and pull requests but won't be fixing much myself.


.. _vim: http://www.vim.org/
.. _PEP8: http://www.python.org/dev/peps/pep-0008/
.. _`script repo`: http://www.vim.org/scripts/script.php?script_id=974
.. _`Steve Losh`: http://stevelosh.com/
.. _here: https://gist.github.com/2965846
.. _Neobundle: https://github.com/Shougo/neobundle.vim
.. _Pathogen: https://github.com/tpope/vim-pathogen
.. _python-mode: https://github.com/klen/python-mode
.. _`Vimscript`: http://learnvimscriptthehardway.stevelosh.com/
.. _vundle: https://github.com/gmarik/Vundle.vim
.. _me: https://hynek.me/
.. _CC0: http://creativecommons.org/publicdomain/zero/1.0/
.. _contributed: https://github.com/hynek/vim-python-pep8-indent/blob/master/CONTRIBUTING.rst
.. _`generous people`: https://github.com/hynek/vim-python-pep8-indent/blob/master/AUTHORS.rst


Credits
-------
``vim-python-pep8-indent`` has been originally written by **David Bustos** and **Eric Mc Sween** who both are unreachable unfortunately.

It is currently maintained by `Hynek Schlawack <https://twitter.com/hynek>`_ with the generous help of the following contributors:

- 0player
- Bryan Bennett
- Clay Gerrard
- Hassan Kibirige
- Jelte Fennema
- Johann Klä
- Joseph Irwin
- Steve Losh
- Sylvain Soliman



