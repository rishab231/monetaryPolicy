# monetaryPolicy
Repo for Econ project on 'Monetary Policy and PID Control'

Author: Rishab Srivastava

**Data replication instructions on Piazza.**

We can plot the following:
* **Autocorrelation function ACF** and/or
* **Impulse response function IRF** of the variables
	* Output gap
	* Inflation
	* Interest rate
	* Output

* IRFs of 4 variables are available in the Pandas dataframe `irf_4`
* ACFs are available in the Pandas  dataframe `acf`
* IRFs of other variables are also available in the Pandas dataframe `all_irf`

For *n* periods, default is n = 20.
These are plotted for each and every model that we have selected.

* We can also choose to *show* the **Unconditional variances** for these 4 variables for each and every model that we choose (only in MATLAB as of now).