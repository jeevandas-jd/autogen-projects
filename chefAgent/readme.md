
🍽️ AI Personal Chef — Collaborative Recipe Generator with Nutrition Validation
📌 Project Overview
AI Personal Chef is a collaborative multi-agent system designed to act like your personal kitchen assistant. It generates customized recipes based on dietary preferences (e.g., vegan, high-protein, low-carb) and serving size, then validates them for nutritional balance using predefined rules. This system leverages Large Language Model agents powered by Autogen for dynamic dialogue and decision-making.

🎯 Project Goals
✅ Dynamically generate recipes based on user preferences and ingredients available.

✅ Ensure each recipe is nutritionally balanced, considering calories, protein, fats, and carbohydrates.

✅ Emulate collaborative reasoning using a round-robin chat between two specialized agents.

✅ Terminate only when a recipe is both suitable and healthy.

🧠 Architecture
👥 Agents
Recipe Creator Agent

Role: Generates detailed recipes using ingredients and user preferences.

Tool: generate_recipe

Inputs: dietary preference (e.g., vegan), number of servings, ingredients list

Output: structured recipe (ingredients, steps, servings)

Nutrition Checker Agent

Role: Validates the nutritional balance of the recipe.

Tool: check_nutrition

Evaluates: total calories, protein, fat, carbs per serving

Decision: Accept or request recipe revision

🔧 Tools
Ingredients Database Tool

Source: ingredients.json

Provides metadata: ingredient name, type, nutritional profile

Used by: Recipe Creator Agent

Nutrition Calculator Tool

Parses recipe and computes per-serving macros

Validates:

Calories: not too high/low

Protein: adequate amount

Fat/Carbs: balanced ratio

🔁 Workflow
Implemented using RoundRobinGroupChat from the Autogen framework.

Input: User provides dietary preference and servings (e.g., “vegan dinner for 2”).

Turn 1 (Recipe Creator): Generates a recipe from ingredients.json.

Turn 2 (Nutrition Checker): Calculates nutritional values and verifies balance.

Loop: If the recipe fails validation, the process continues until a valid recipe is found.

Termination: Chat ends when the nutrition checker accepts the recipe as “BALANCED ✅”.