# Sensor Readings Interface

This project provides the web interface for displaying Vaisala DMT364 sensor readings, including dewpoint temperature, mixing ratio, sensor saturation rate, and sensor temperature. The interface also includes features for exporting and importing data, saving and loading data as cookies, and fetching the internal microcontroller's IP address.

*© MSU BAE - 23 JAN 2025*

>Important Note: Readings will not come through unless the microcontroller is connected to a power source via its USB cable. This power can be obtained from a computer or a USB power adapter.

## Download Instructions

1. **Download the File:**
   - Click [ctrl + s] or right-click on the page and select "Save As" to download the file.
   - Save the file with the name `dmt346.html` on your computer. Replace your existing file if possible.

2. **Download the Launch Program:**
   - For Windows 7 or Greater: Save the `launch_win7` Chrome or Edge program to the same folder as the `dmt346.html` file.
   - For any Linux distribution supporting HTML5: Save the `launch_linux` Chrome or Edge program to the same folder as the `dmt346.html` file. Don't forget to make the script executable by running `chmod +x launch_linux{browser}.sh` in your terminal.

3. **Open the File:**
   - Run the `launch_win7` program to launch the interface in your chosen Chromium web browser.
   - Or, open the `dmt346.html` file in an other modern web browser of your choice.

## Usage Instructions

1. **Update Dataset Name:**
   - Enter a name for the dataset in the input field and click the "Update" button.

2. **Export Data:**
   - Click the "Export Data" button to export the data to a CSV file.

3. **Import Data:**
   - Click the "Import Data" button to import data from a CSV file.

4. **Save Data as Cookie:**
   - Click the "Save Cookie 🍪" button to save the current data as a cookie.

5. **Load Data from Cookie:**
   - Click the "Load Cookie 🍪" button to load data from a saved cookie.

6. **Delete Cookie:**
   - Click the "Delete Cookie 🍪" button to delete a saved cookie.

7. **Clear Historical Data:**
   - Click the "Clear History ⚠️" button to clear all historical data.

8. **Fetch IP Address:**
   - Click the "Fetch IP Address" button to connect USB to the device and fetch the IP address.

9. **Activate Screen Lock:**
   - Click the "Activate Screen Lock" button to prevent the screen/computer from sleeping while the window is open.

## Update Notifications

The interface will automatically check for updates and display a notification if a new version is available. Follow these steps to update:

1. **Check for Updates:**
   - The interface will check for updates automatically when opened in a web browser.

2. **Update Notification:**
   - If a new version is available, a notification will be displayed at the top of the page.

3. **Download the Latest Version:**
   - Click the link provided in the notification to download the latest version of the `dmt346.html` file.

4. **Replace the Existing File:**
   - Save the new file with the name `dmt346.html` and replace your existing file.

## Additional Information

- The interface fetches sensor data every 5 seconds and updates the current readings, chart, and historical data table.
- The interface will slow down data collection because of browser throttling if the page is not in focus and the program was not started with the launch file.
- The IP address to read from can be fetched over USB or manually using the `COM_monitor.exe` program if needed.
   - To use `COM_monitor.exe`, you must first know which port the sensor is connected to. This can be found in Windows Device Manager under "Ports (COM & LPT)" likely as `...USB to UART Bridge (COM{#})`. You will be prompted to enter the COM port number when running the program.
- The dataset name is saved to localStorage and will persist across sessions.

>For any issues or questions, please refer to the source code or contact the project maintainer. For more information on the sensor readings, please refer to the Vaisala DMT364 user manual.