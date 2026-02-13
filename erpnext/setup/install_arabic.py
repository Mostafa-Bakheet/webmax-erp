#!/usr/bin/env python3
"""
WEBMAX ERP - Arabic Translation Setup
"""

import frappe
from frappe import _

def setup_arabic_language():
    """Setup Arabic as default language with proper translations"""
    
    # Create/update Language record
    if not frappe.db.exists("Language", "ar"):
        frappe.get_doc({
            "doctype": "Language",
            "language_code": "ar",
            "language_name": "العربية",
            "flag": "🇦🇪",
            "enabled": 1
        }).insert()
    
    # Update System Settings for Arabic
    system_settings = frappe.get_doc("System Settings")
    system_settings.language = "ar"
    system_settings.country = "United Arab Emirates"
    system_settings.time_zone = "Asia/Dubai"
    system_settings.date_format = "DD-MM-YYYY"
    system_settings.first_day_of_the_week = "Saturday"
    system_settings.save()
    
    frappe.db.commit()
    print("✅ Arabic language setup completed for WEBMAX")

if __name__ == "__main__":
    frappe.connect()
    setup_arabic_language()
    frappe.destroy()
