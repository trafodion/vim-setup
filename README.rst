vim-python-pep8-indent
======================

.. image:: https://travis-ci.org/hynek/vim-python-pep8-indent.png?branch=travis
   :target: https://travis-ci.org/hynek/vim-python-pep8-indent

This small script modifies vim_’s indentation behavior to comply with PEP8_ and my aesthetic preferences.
Most importantly::

   foobar(foo,
          bar)

and::

   foobar(
      foo,
      bar
   )


Installation
------------


Pathogen
^^^^^^^^

Follow the instructions on installing Pathogen_ and then:

.. code-block:: shell-session

   $ cd ~/.vim/bundle
   $ git clone https://github.com/hynek/vim-python-pep8-indent.git


Vundle
^^^^^^

Follow the instructions on installing Vundle_ and add the appropriate plugin line into your ``.vimrc``:

.. code-block:: vim

   Plugin 'hynek/vim-python-pep8-indent'


NeoBundle
^^^^^^^^^

Follow the instructions on installing NeoBundle_ and add the appropriate NeoBundle line into your ``.vimrc``:

.. code-block:: vim

   NeoBundle 'hynek/vim-python-pep8-indent'


Notes
-----

Please note that Kirill Klenov’s python-mode_ ships its own version of this bundle.
Therefore, if you want to use this version specifically, you’ll have to disable python-mode’s using:

.. code-block:: vim

   let g:pymode_indent = 0


License and Authorship
----------------------

This script is based on one from vim’s official `script repo`_  that was *not* originally written by me.
Unfortunately the indentation was off by one character in one case and the script hasn’t been updated since 2005.

Even more unfortunately, I wasn’t able to reach any of the original authors/maintainers:
**David Bustos** and **Eric Mc Sween**.

So I fixed the annoyance it with the help of `Steve Losh`_ and am putting it out here so you don’t have to patch the original yourself.
The original patch is still available here_.

Over the time a lot more improvements have been contributed_ by `generous people`_.

I’d like to thank the original authors here for their work and release it hereby to the *Public Domain* (using the CC0_ licence) since I hope that would be in their spirit.
If anyone with a say in this objects, please let me_ know immediately.
Also, if someone is in contact with one of them, I would appreciate being introduced.

While my Vimscript_ skills are still feeble, I intend to maintain it for now.
This mainly means that I’ll triage through bugs and pull requests but won’t be fixing much myself.


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