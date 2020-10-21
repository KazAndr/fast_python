#!/usr/bin/env python3

"""
setup.py file for SWIG example
"""

from distutils.core import setup, Extension


vari_module = Extension('_vari',
                           sources=['vari_wrap.c', 'vari.c'],
                           )

setup (name = 'vari',
       version = '0.1',
       author      = "Kazantsev",
       description = """Check variables""",
       ext_modules = [vari_module],
       py_modules = ["vari"],
       )
