certutil -delstore root "*.securly.com"
certutil -delstore my "*.securly.com"

certutil -delstore -user root "*.securly.com"
certutil -delstore -user my "*.securly.com"