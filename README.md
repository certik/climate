# Climate

## Summary

The goal of this project is to provide climate data and analysis in computable
form (in terms of [IPython Notebooks](http://ipython.org/notebook.html)). Part
of our goal is to reproduce graphs and results from literature. Ultimately we
would like to start from the raw data (e.g. from temperature stations,
satellites, ice cores and other measurements) and provide the analysis in a
notebook, so that anyone can easily rerun it and see exactly how the final
results and graphs were obtained from original data.

## Preview the IPython Notebooks

If you just want to see the notebooks, the best way is to preview them with the
links below. When you're ready to develop or run the code yourself, pull the
source for this GitHub repository and execute the notebooks on your own
machine.

* [Satellite Temperature (RSS)](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/RSS.ipynb)
* [Satellite Temperature (RSS) maps](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/RSS%2520plots.ipynb)
* [Berkeley Fit](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/Berkeley%2520fit.ipynb)
* [Temperature Data](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/Temperature%2520Data.ipynb)
* [Sea Ice Index](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/Sea%2520Ice%2520Index.ipynb)
* [Temperature Fits Reproduction](http://nbviewer.ipython.org/urls/raw.github.com/certik/climate/master/Temperature%2520Fits%2520Reproduction.ipynb)

## Motivation

The motivation for this work is the following:

* Reproduce graphs and results from literature.
* Provide notebooks that anyone can easily rerun to reproduce all our results
  exactly (including all the graphs).
* Provide a "pipeline", that takes raw data and calculates final results, so
  that anyone can easily see what exact analysis was done.
* Let the data speak for itself, we try hard not to "jump to conclusions" (or
  have "leaps of faith"), that does not strictly (scientifically) follow from
  the data.
* Following Feynman's "never trust the experts", we want anybody to form his or
  her opinion about the issue, and this project might help by doing the hard
  work (of getting the data, understanging it, analysing it and calculating
  results/graphs), that one has to do anyway in order to understand the issues.
  By the nature of the process, the analysis can be wrong, but by making all
  the analysis public in a computable form, it can be discussed, improved or
  dismissed.
* In particular (as implied by the previous points), we try to strictly only
  include analysis that is scientifically agreed upon and undisputed, or if
  that is not possible, to provide all possible weaknesses of the given
  approach.

Please send us ideas for improvements (for example you can open a GitHub
[issue](https://github.com/certik/climate/issues) or send us an
email) or send a GitHub [pull
request](https://help.github.com/articles/using-pull-requests) (even better
:).

## License

All files (notebooks, Python code) are licensed under MIT license, see the
[LICENSE](https://raw.github.com/certik/climate/master/LICENSE) for more
information. The `data` directory contains files that were downloaded from
various sources and they are covered by their own respective licenses.
