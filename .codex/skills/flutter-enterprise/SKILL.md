---
name: flutter-enterprise
description: Enterprise Flutter architecture with Riverpod, Hooks, Dio, dart_mappable and feature-based structure
---

# Flutter Enterprise Rules

Folder structure:

lib/
  feature/
    feature_name/
      repository/
      controller/
      view/

State management:
- hooks_riverpod
- flutter_hooks

Spacing:
- Use Gap package

Serialization:
- Use dart_mappable

Map parsing:
- Use:
  - map.parseInt(key)
  - map.parseString(key)
  - map.parseDouble(key)

Repositories:
- Inject dependencies
- Use ApiHandeler mixin
- Return FutureReport<T>

Code style:
- Use dot_shorthand when possible
- Prefer final
- Avoid unnecessary nesting
- Prefer pattern matching
- Prefer extension methods
- Keep widgets focused

UI rules:
- Separate page and widget files
- Avoid massive build methods
- Extract sections into widgets

Controller rules:
- Controllers contain business logic
- No API calls directly from views

Repository rules:
- Repositories handle API/database only