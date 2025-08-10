#!/usr/bin/env python3
"""
Simple HTTP server for testing the portfolio site locally.
This serves static files without Jekyll processing.
"""

import http.server
import socketserver
import os
import sys
from pathlib import Path

# Change to the directory containing this script
os.chdir(Path(__file__).parent)

PORT = 8000

class MyHTTPRequestHandler(http.server.SimpleHTTPRequestHandler):
    def end_headers(self):
        # Add CORS headers for local development
        self.send_header('Access-Control-Allow-Origin', '*')
        super().end_headers()

def main():
    # Check if _site directory exists (built Jekyll files)
    if os.path.exists('_site'):
        print("Found _site directory - serving built Jekyll files")
        os.chdir('_site')
        serve_path = "_site"
    else:
        print("No _site directory found - serving current directory")
        print("Note: For full functionality, build the site first using:")
        print("  - build.bat (if you have Jekyll installed)")
        print("  - docker-build.bat (if you have Docker)")
        serve_path = "current directory"
    
    try:
        with socketserver.TCPServer(("", PORT), MyHTTPRequestHandler) as httpd:
            print(f"Server running at http://localhost:{PORT}")
            print(f"Serving files from: {serve_path}")
            print("Press Ctrl+C to stop the server")
            httpd.serve_forever()
    except KeyboardInterrupt:
        print("\nServer stopped.")
    except OSError as e:
        if e.errno == 48:  # Address already in use
            print(f"Port {PORT} is already in use. Try a different port.")
        else:
            print(f"Error: {e}")

if __name__ == "__main__":
    main()
