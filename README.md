# ha-dashy-mcdashboardface

*A Home Assistant dashboard made of YAML, vibes, and a sadness for Dwain's being no longer maintained.*

This is our personal Mushroom UI setup, built for a tablet-friendly, clean interface. It's designed for our household, but you're welcome to fork it or take ideas from it.

**Features:**
- Person chips with current zone and map tap-through
- Room cards with at-a-glance temperature and device status
- Clean rounded-corner aesthetic via Mushroom cards
- No third-party services, iframe nonsense, or abandoned frameworks

## Prerequisites

This dashboard requires the following HACS Frontend integrations:
- [Mushroom Cards](https://github.com/piitaya/lovelace-mushroom)
- [Auto-Entities](https://github.com/thomasloven/lovelace-auto-entities)
- [Layout Card](https://github.com/thomasloven/lovelace-layout-card)

## Installation

### 1. Install as HACS Repository
1. Go to HACS > ⋮ > Custom repositories
2. Add this repository URL with category "Dashboard"
3. Click Install

### 2. Configure Dashboard
Copy the contents of [example-configuration.yml](example-configuration.yml) into your `configuration.yaml`. This will set up the dashboard with the required resources and configuration.

### 3. Restart & Reload
1. Restart Home Assistant
2. Go to Configuration > Dashboards
3. The dashboard should appear in your sidebar as "Dashy McDashboardface"

## Troubleshooting

If you see errors about missing custom cards:
1. Ensure all prerequisite HACS Frontend integrations are installed
2. Go to Configuration > Dashboards > Dashy McDashboardface
3. Click ⋮ > Reload resources
4. Refresh your browser

---

### License
MIT. Use freely, no warranty, blame your cat if it breaks.
