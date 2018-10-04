#### This application helps in Encrypt & Decrypt conneciton strings or any configuration explicitly, using MachineKey
- This is only meant for .NET full framework apps, which uses web.config
##### Where will you need it?
- In case if connection strings are stored in ENV variable and it should not be human readable, most likely a temperory solution until a right solution like config-sever in place
##### Steps to perform
- Clone or download this application code for git `https://github.com/alfusinigoj/simple_machinekey_encrypt_decrypt_app`
- Open the solution in VS 2017 and compile
- Goto `https://www.developerfusion.com/tools/generatemachinekey/` and generate a machine key
- Paste it under the `system.web` section of `web.config`, of the encryption tool app and the __app that you are going to use__ this encrypted value (section will look like below)
    ```
     <machineKey validationKey="B2FFA07BEA941CBFD2F2450A5BE4D8F6ABFFE624F3DBB35BC589D34C5647F65235634AEC71B5C1E2453BE8D466B6818A9438AC2FFE0C09024052FFF27C85EB3C" 
                decryptionKey="4AFFE5CFAE4F97BFAE7736E5A6B85E921EF209FA84F4BC665993E72393B080DC" validation="SHA1" decryption="AES" />
    ```
- Run the tool from Visual Studio (Ctl+F5)
- Enter the `value` to be encrypted/decrypted, provide a `purpose` and click on appropriate button
- Here you get the encrypted or decrypted value
- You can use the below code in your app to decrypt the configuration while accessing. This uses `System.Web.Security` namespace
    ```
    var decrypted = Encoding.UTF8.GetString(MachineKey.Unprotect(Convert.FromBase64String("value to decrypt"), "purpose"));
    ```
