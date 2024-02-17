Disk Imager Script
This Bash script is designed to provide a user-friendly interface for imaging disks on Linux systems. It utilizes the built-in dd tool for disk copying and provides additional features such as checking connected devices, creating hash values for image verification, and robust error handling.

Features
Device Detection: Automatically detects connected devices for imaging.
Disk Imaging: Utilizes the dd tool to create disk images.
Hash Generation: Capable of creating hash values for generated disk images to ensure data integrity.
Error Handling: Implements robust error handling to provide a smooth user experience.
User-Friendly Interface: Designed with ease of use in mind, ensuring simplicity and clarity for users.
Prerequisites
Linux operating system
Bash shell
Usage
Clone the repository to your local machine:

```bash

git clone https://github.com/your-username/disk-imager.git
```
Navigate to the directory containing the script:

```bash

cd disk-imager
```
Make the script executable:

```bash
chmod +x disk_imager.sh
```
Run the script:

```bash
./disk_imager.sh
```
Follow the on-screen instructions to perform disk imaging.
