# Flyme 6 for Infinix Hot 2
I don't think I need to introduce, but if you really need to know, check my gist [here.](https://gist.github.com/Rendyindo/bab9f90a8b1fef9b9bf2cdadc5ebee42)  
# Compiling
## Preparing
Just run these simple commands to syncronize Flyme source code to your PC.  
```sh
$ repo init -u https://github.com/Rendyindo/manifest.git -b nougat-7.1
$ repo sync -c -j4
```
## Building
1. cd to the root of your source code directory  
2. Run these commands to prepar environment variables
```sh
$ source build/envsetup.sh
```
3. cd to device source root
```sh
$ cd devices/X510
```
4. Run the full package build
```sh
$ flyme fullota
or
$ make fullota
```
5. Enjoy!  
# Prologue
If anything broke, feel free to drop stuffs to Issues, I'll review it ASAP.
