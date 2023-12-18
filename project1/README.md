## Assignment Instructions
Details about this assignment can be found [on the course webpage](https://courses.cs.washington.edu/courses/cse493g1/23au/assignments/) for Autumn '23, under Assignment 1.

To install the prerequisites for this assignment, please run
```
pip install -r requirements.txt
```
To prepare the CIFAR-10 dataset for this assignment, run

```
cd cse493g1/datasets
bash get_datasets.sh
```

Please examine `collect_submission.ipynb` for detailed submission instructions.


## Run Locally
We highly recommend you to use [Google Colab](https://colab.research.google.com/) to run the notebooks. If you want to run the notebooks locally, you can follow the instructions below:

1. Install conda package manager. See [here](https://docs.conda.io/projects/conda/en/latest/user-guide/install/) for instructions. You can install miniconda distribution as it's light weight and does not come with unnecessary packages.

2. Create conda environment. We have tested the code with python 3.10. Here is the command to create the environment.
```bash
conda create --name cse493_au23  python=3.10
```

3. Activate the environment.
```bash
conda activate cse493_au23
```

4. Install the required packages.
```bash
pip install -r requirements.txt
```

5. Create an ipython kernel for the environment by running the following command (make sure that the environment is activated when you run the command):
```bash
python -m ipykernel install --user --name=cse493_au23
```

6. And that's it! Make sure that when you run the python files you do it when the environment is activated. Also, when you want to run the notebooks, make sure that you change the kernel to `cse493_au23` from the top right corner of the notebook.