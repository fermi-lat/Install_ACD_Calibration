# =============================================================================
# CODE to source the compled ACD install before run
# -----------------------------------------------------------------------------
#
# Assumes you have a working conda environment
#
# Initialize:
cd ..
MY_DIR=$(pwd)
export CONDA_PREFIX=$HOME/miniconda
export PATH=${CONDA_PREFIX}/bin/:$PATH
source ${CONDA_PREFIX}/etc/profile.d/conda.sh
conda activate acd_env
source ${MY_DIR}/ACD_calib_github_software/config.sh
source ${MY_DIR}/ACD_calib_github_software/setup.sh
source ${RELEASE}/_setup.sh
cd ${RELEASE}/workdir
export LD_LIBRARY_PATH=${MY_DIR}/local_libs:$LD_LIBRARY_PATH
export LD_LIBRARY_PATH=$CONDA_PREFIX/lib:$LD_LIBRARY_PATH