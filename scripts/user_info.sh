#!/bin/bash

echo "===================================="
echo "          USER INFORMATION"
echo "===================================="

echo
echo "Current User"
whoami

echo
echo "Logged-in Users"
who

echo
echo "Last Login"
last -a | head

echo
echo "User ID Information"
id