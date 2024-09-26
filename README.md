# WinMaint.bat

WinMaint.bat is a comprehensive Windows maintenance tool designed to simplify system upkeep through an intuitive menu-driven interface. It provides users with a wide array of functionalities such as cache cleaning, network diagnostics, system health checks, automated backups, and more. Each feature is accessible from a simple numbered menu system, making it easy to perform essential maintenance tasks on Windows-based systems.

## Features
Below is a detailed breakdown of all the features available in the script:

### 1. Cache Cleaning (`clean_cache`)
This feature clears out unnecessary cached files stored on your system, freeing up disk space and potentially improving system performance. Cached files can accumulate over time and lead to sluggishness, so regular cleaning is recommended.

### 2. WiFi Restart (`restart_wifi`)
Restarting your WiFi adapter can resolve common network connectivity issues. This feature automates the process of disabling and re-enabling your WiFi adapter to restore a stable connection.

### 3. Empty Recycle Bin (`empty_recycle_bin`)
This feature permanently deletes files from the Recycle Bin, freeing up disk space. It's useful when you need to clear large amounts of deleted data.

### 4. Schedule Shutdown (`schedule_shutdown`)
Automates the process of scheduling a shutdown for your system. This can be useful for setting your PC to shut down after a specific period of time, especially for energy-saving purposes.

### 5. Schedule Restart (`schedule_restart_menu`)
Similar to the shutdown scheduling feature, this allows you to schedule an automatic system restart after a set amount of time. Useful for when updates require a restart but you wish to delay it.

### 6. Windows Updates Management (`windows_updates_menu`)
This feature checks for and installs any pending Windows updates. Keeping your system updated is crucial for security and performance enhancements.

### 7. System Health Checks (`system_health_checks`)
Performs a series of diagnostic tests on your system to ensure everything is running smoothly. It checks for common issues that could impact system performance or stability.

### 8. View Log (`view_log`)
Allows you to view logs that document the actions taken by the WinMaint.bat script. This is useful for troubleshooting and keeping track of maintenance tasks.

### 9. Visit Websites (`visit_websites`)
Provides a list of useful websites (potentially related to system optimization or troubleshooting). This feature could serve as a quick access point for useful online resources.

### 10. Disk Defragmentation (`disk_defragmentation`)
Defragments your hard drive to improve performance by organizing fragmented files. Regular defragmentation can lead to faster file access and smoother system performance, especially on older HDDs.

### 11. Startup Optimization (`startup_optimization`)
Allows you to manage and optimize the programs that launch when your system starts. Disabling unnecessary startup programs can significantly speed up boot times.

### 12. Driver Updates (`driver_updates`)
Checks for and installs any available updates for your system’s drivers. Keeping drivers updated ensures compatibility and optimal performance of hardware components.

### 13. System Restore Points (`restore_points_menu`)
Creates or manages system restore points. Restore points allow you to roll back your system to a previous state in case of software issues or unintended changes.

### 14. System Information (`system_information`)
Displays detailed information about your system, including hardware specifications, installed software, and current system status.

### 15. Network Diagnostics (`network_diagnostics`)
Runs diagnostic tools to check for common network issues and attempts to resolve them. Useful for troubleshooting internet or network connection problems.

### 16. Automated Backup (`automated_backup`)
This feature automates the process of backing up important files and system settings to a secure location. Regular backups are critical for preventing data loss.

### 17. Clean Event Logs (`clean_event_logs`)
Clears out Windows Event Logs that can grow large over time. While these logs can be useful for troubleshooting, they can also occupy a significant amount of space if left unchecked.

### 18. Check Antivirus Status (`check_antivirus`)
Ensures that your antivirus software is active and up-to-date. This is critical for protecting your system from malware and other threats.

### 19.  Backup Network Configuration (`backup_network`)
Backs up your current network configuration. This is useful for quickly restoring your network settings after changes or troubleshooting steps.

### 20. Power Settings Optimization (`power_settings`)
Allows you to manage and optimize your system’s power settings for performance or energy savings. This is especially useful for laptop users who want to extend battery life.

### 21. Launch Chris Titus Tech Utility (`launch_chris_titus_utility`)
This feature launches Chris Titus Tech’s utility, which provides additional system optimization tools. It extends the functionality of WinMaint.bat by offering more advanced tweaks.

### 22. Disk Space Visualization (`disk_space_visualization`)
Provides a visual representation of disk space usage. This helps you identify large files or directories that are taking up significant amounts of storage.

### 23. Battery Health Check (`battery_health_check`)
Displays the current health status of your laptop battery. Over time, batteries degrade, and this tool helps monitor their condition for optimal performance.

### 24. Internet Speed Test (`internet_speed_test`)
Runs an internet speed test to check your download and upload speeds. This is helpful for diagnosing network performance issues.

### 25. File Encryption Utility (`file_encryption_utility`)
Encrypts files for added security. This tool is useful for protecting sensitive data on your system by converting it into a secure format.

### 26. System Resource Monitor (`system_resource_monitor`)
Monitors CPU, RAM, and disk usage in real-time. This feature helps identify resource-hogging applications and can guide system optimization efforts.

### 27. Exit Script (`exit_script`)
Exits the script and closes the command window. This is a simple but necessary feature for cleanly terminating the batch file’s operations.

## How to Use
1. Download the WinMaint.bat file from the repository or `git clone` the repo if you want to get updates (suggested method):
   ````bash
   git clone https://github.com/BenevolenceMessiah/WinMaint.bat.git
3. Place the file in a convenient location on your system (e.g., Desktop or a Maintenance folder).
4. Right-click the file and select Run as Administrator to ensure it has the necessary permissions to execute all tasks.
5. Follow the on-screen menu prompts by entering the number corresponding to the task you want to perform.

## System Requirements
- Windows 7 or higher
- Administrator privileges (for certain tasks like cleaning event logs or managing system restore points)
  
#### License
This project is licensed under the MIT License.

