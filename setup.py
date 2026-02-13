from setuptools import setup, find_packages

setup(
    name="webmax",
    version="1.0.0",
    description="WEBMAX ERP System",
    packages=find_packages(include=["erpnext", "erpnext.*"]),
    python_requires=">=3.11",
)
