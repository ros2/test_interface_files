# rcl_interfaces
This package contains the messages and services which ROS client libraries will use under the hood to
communicate higher level concepts such as parameters.


## Standard topics for parameters

The ROS API for a node will be as follows inside the node's namespace.

### Topics:
 * `parameter_updates`: `ParameterEvent`
  * This topic provides a way to subscribe to all parameter updates occuring on the node, including addition removal and changes in value.

### Services:

 * `get_params`: `GetParams`
  * The service to get the value of parameters which are set on this node.
 * `has_params`: `HasParams`
  * Query this node if specific parameters are set.
 * `list_params` : `ListParamsByPrefix`
  * List the parameters on this node matching the filters.
 * `set_params`: `SetParams`
  * Set parameters on this node.
