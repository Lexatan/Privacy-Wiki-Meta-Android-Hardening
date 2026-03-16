# DNS and Encryption

## System-Level DNS Configuration
To configure system-level DNS on Android devices, you will typically navigate to the network settings. You can set custom DNS servers that operate at a system level instead of relying on your ISP's DNS. This can enhance your privacy and security.

### Steps to Configure:
1. Go to **Settings** > **Network & Internet** > **Advanced** > **Private DNS**.
2. Select **Private DNS provider hostname**.
3. Enter your preferred DNS provider (for example, `dns.example.com`).

## DNS-over-TLS
DNS-over-TLS (DoT) is a security protocol that encrypts DNS queries to prevent eavesdropping and tampering. This ensures that your browsing history is kept private.

### Features:
- **Encryption**: Only the client and server can read the DNS queries.
- **Integrity**: Protects against DNS spoofing.

### Setting Up DNS-over-TLS:
1. Check if your DNS provider supports DoT.
2. Enable DoT in your Android device settings or through a specific DNS app.

## Tools for Global Ad-Blocking and Network Monitoring
### RethinkDNS
RethinkDNS is an intelligent DNS security suite designed to block ads and trackers, while providing fine-grained control over your DNS settings.

#### Key Features:
- **Ad Blocking**: Automatically blocks known ad and tracker domains.
- **Custom Lists**: Allows users to import custom block lists.

### NetGuard
NetGuard is an open-source firewall application for Android that uses a local VPN to block internet access without rooting.

#### Key Features:
- **Ad Blocking**: Enables blocking of ads system-wide.
- **Network Monitoring**: View which apps are accessing the internet and when.

## Conclusion
Securing DNS configuration and using tools like RethinkDNS and NetGuard can significantly enhance your online privacy and security. By adopting DNS-over-TLS, you strengthen your defenses against common cyber threats.