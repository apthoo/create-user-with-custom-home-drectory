🔹 𝗖𝗿𝗲𝗮𝘁𝗶𝗻𝗴 𝗮 𝗟𝗶𝗻𝘂𝘅 𝗨𝘀𝗲𝗿 𝘄𝗶𝘁𝗵 𝗮 𝗖𝘂𝘀𝘁𝗼𝗺 𝗛𝗼𝗺𝗲 𝗗𝗶𝗿𝗲𝗰𝘁𝗼𝗿𝘆 🔹

Managing users effectively is crucial in Linux system administration. This Bash script streamlines the process by ensuring a new user is created with a specific home directory.

🚀 𝗛𝗼𝘄 𝘁𝗵𝗲 𝗦𝗰𝗿𝗶𝗽𝘁 𝗪𝗼𝗿𝗸𝘀:
1️⃣ Superuser Validation – The script checks if it's being run by root (id -u == 0). If not, execution halts. 2️⃣ Home Directory Creation – Users specify a directory name, which is created inside /home/. 3️⃣ User Account Creation – The useradd -d /home/$DIR $USER command assigns the newly created directory as the user's home. 4️⃣ Ownership Adjustment – chown is used to assign proper file ownership, ensuring access control. 5️⃣ Verification – The script confirms the user’s existence via /etc/passwd and lists directory details for validation.

🛠️ 𝗞𝗲𝘆 𝗖𝗼𝗻𝘀𝗶𝗱𝗲𝗿𝗮𝘁𝗶𝗼𝗻𝘀 𝗕𝗲𝗳𝗼𝗿𝗲 𝗥𝘂𝗻𝗻𝗶𝗻𝗴:
✅ Root Privileges Are Mandatory – Execute as a superuser (sudo or root). ✅ Directory Must Exist – If missing, user creation won’t proceed. ✅ Prevent Conflicts – Ensure chosen username and directory name are unique. ✅ Permission Management – Adjust directory settings using chmod and chown as needed. ✅ Error Handling – The script contains basic validation, but implementing log output enhances debugging.
