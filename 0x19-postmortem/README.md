### POSTMOTERM ON A CRASHED WEBSITE
![website-crash-1024x683](https://github.com/EAZYLINK/alx-system_engineering-devops/assets/83819099/d89777a7-56a7-4b37-ba79-4478d51d1ebe)

![404-page](https://github.com/EAZYLINK/alx-system_engineering-devops/assets/83819099/54cf8deb-4a05-42e7-83aa-0a9cf13ba652)

Issue Summary:
Duration: May 10, 2022, 2:00 PM - May 11, 2022, 11:00 AM (UTC)
Impact: Users were unable to access the website during the outage, resulting in a 100% downtime for the service.
Root cause: A database server malfunctioned due to a hardware failure.

Timeline:
- May 10, 2022, 2:00 PM (UTC): The outage was detected when a monitoring alert went off for the website's server.
- The engineering team was immediately notified and started investigating the issue.
- Initial assumption was that the server had reached its capacity limit due to a spike in traffic.
- Further investigation revealed that the issue was caused by a database server malfunction.
- May 10, 2022, 5:00 PM (UTC): The engineering team escalated the incident to the database team.
- May 10-11, 2022: The database team worked on resolving the issue by replacing the faulty hardware and restoring data from backups.
- May 11, 2022, 11:00 AM (UTC): The website service was fully restored.

Root cause and resolution:
The root cause of the issue was a hardware failure in the database server, which caused the database to go offline and resulted in the website service being unavailable. The resolution involved replacing the faulty hardware and restoring data from backups. The database team worked to ensure that the restored data was consistent and accurate to minimize any potential data loss.

Corrective and preventative measures:
To prevent similar incidents in the future, the following measures will be implemented:
- Regular monitoring of hardware health to catch any potential failures before they cause an outage.
- Implementing redundancy measures to ensure that there are backup systems in place in case of hardware failure.
- Regular testing of the backup and recovery process to ensure that it is working correctly.
- Updating the incident response plan to include procedures for handling database server failures.

Tasks to address the issue:
- Replace the faulty hardware in the database server.
- Implement redundant systems to ensure that there are backup systems in place in case of hardware failure.
- Test the backup and recovery process regularly to ensure that it is working correctly.
- Update the incident response plan to include procedures for handling database server failures.
