if [ ! -d "cifar-10-batches-py" ]; then
  wget http://www.cs.toronto.edu/~kriz/cifar-10-python.tar.gz -O cifar-10-python.tar.gz
  tar -xzvf cifar-10-python.tar.gz
  rm cifar-10-python.tar.gz
  wget https://courses.cs.washington.edu/courses/cse493g1/23au/resources/imagenet_val_25.npz
fi
