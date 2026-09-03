# LIBRARY INFO

This is a modified version of CJDev's UUID hex converter datapack.
I am using this to implement computer-controlled players in Space Aces 2.
Instead of converting full UUIDs, this modified version only operates on UUID[3]. The outside code I'm writing assumes that all other components are static.


## UUID-Hex
High-performance library for formatting UUIDs into hexadecimal strings.

# Features
- **Efficiently** converts UUIDs to hex format
- Optimized for speed by relying on a precomputated hexadecimal range (`0000-FFFF`), increasing static data usage

# Usage
Call the `sa_uuid4:_` function as an entity and use its output in `storage uuid:out plain`
Alternatively, assign a 4-integer array to `storage uuid:in UUID`, then call the `sa_uuid4:convert` function to format it.