# Network Analysis in R

This repo has a collection of scripts that demonstrate how to conduct network analysis in R.

## Libs
* `igraph`
* `visNetwork`

## Visualization
The `networks.r` script demonstrates some basic network analysis.

### Data

The data is designed to represent the leadership within an Army company.  This contrived example demonstrates how eigenvector centralallity can identify an important person in a network (e.g., the company commander).

### Techniques 
* Convert dataframe to igraph object
* Calculate network statistics
* Convert igraph object to visNetwork object
* Visualize network statistics
