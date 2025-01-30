# Networking Security Baseline for Azure

## 🔒 Best Practices
- **Restrict RDP & SSH Access**: Block **3389 (RDP)** and **22 (SSH)** from the internet.
- **Use NSGs (Network Security Groups)**: Apply least privilege firewall rules.
- **Enable NSG Flow Logs**: Monitor traffic for anomalies.
- **Use Private Endpoints**: Avoid exposing resources to the internet.

## 🎯 Manual Implementation Steps (Azure Portal)
1. **Go to Azure Portal** → Search **Network Security Groups (NSG)**.
2. Select an NSG and open **Inbound Security Rules**.
3. **Delete any rule allowing RDP (3389) or SSH (22) from `Any` or `Internet`**.
4. **Enable NSG Flow Logs**:
   - Navigate to **Network Watcher** → **NSG Flow Logs**.
   - Select your NSG → Set retention period **90+ days**.

