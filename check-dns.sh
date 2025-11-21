#!/bin/bash
# Quick DNS check script

echo "Checking DNS for threadlines.net..."
echo ""
echo "A Records (should show GitHub IPs):"
dig threadlines.net +short
echo ""
echo "WWW CNAME (should show atwi.github.io):"
dig www.threadlines.net +short
echo ""
echo "✅ If you see GitHub IPs (185.199.108-111.153), DNS is configured correctly!"

