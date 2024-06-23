# From the Deep

In this problem, you'll write freeform responses to the questions provided in the specification.

## Random Partitioning

By distributing observations evenly across 3 boats, Aquabyte can manage a higher capacity and still maintain a good amount of data even if 1 boat experiences issues. However, this approach will require the researcher to run query on all 3 boats and also requires more storage space, which is not ideal.

## Partitioning by Hour

Since a certain boat will receive most of the data, the researcher will only need to query each boat for specific periods. However, if the boat handling the majority
of the data experiences issues, a majority of the data could be lost.

## Partitioning by Hash Value

Since the timestamp is computed as a hashed value, this appraoch will require lesser storage space. However, due to the limit on hashed values, this approach would
not be able to store additional timestamps if the data exceeds that limit.
