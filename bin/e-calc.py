#!/usr/bin/env python3

import sys
import argparse

data = {
    "daily": 0,
    "weekly": 0,
    "monthly": 0,
    "yearly": 0,
    "kwh": 0
}

def get_args():
    parser = argparse.ArgumentParser()
    parser.add_argument("watt")
    parser.add_argument("hours")
    parser.add_argument("price")
    args = parser.parse_args()

    return args.watt, args.hours, args.price

def calc(watt, hours, price):
    data["kwh"] = (float(watt) * float(hours)) / 1000
    
    data["daily"] = (data["kwh"] * 1) * float(price)
    data["weekly"] = (data["kwh"] * 7) * float(price)
    data["monthly"] = (data["kwh"] * 31) * float(price)
    data["yearly"] = (data["kwh"] * 365) * float(price)

def show():
    print("{:<8} {:>10.2f} $".format("Daily:", data["daily"]))
    print("{:<8} {:>10.2f} $".format("Weekly:", data["weekly"]))
    print("{:<8} {:>10.2f} $".format("Monthly:", data["monthly"]))
    print("{:<8} {:>10.2f} $".format("Yearly:", data["yearly"]))

def main():
    w, h, p = get_args()

    calc(w, h, p)

    show()

if __name__ == "__main__":
    main()