## Installation
The code is developed and tested using 4 or 8 Tesla V100 GPUs.

1. **Clone this repo.**

   ```shell
   $ git clone https://github.com/qpc1611094/FPL.git
   ```

2. **Install dependencies.**

   **(1) Create a conda environment:**

   ```shell
   $ conda env create -f FPL.yaml
   $ conda activate FPL_dist
   ```

   **(2) Install apex 0.1(needs CUDA)**

   ```shell
   $ cd ./FPL_based_on_CPS/furnace/apex
   $ python setup.py install --cpp_ext --cuda_ext
   ```
