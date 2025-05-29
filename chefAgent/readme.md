# AI Personal Chef Agents 🍽️🤖

An intelligent multi-agent system designed to generate **personalized, healthy recipes** using AI. This project simulates a personal chef that not only creates tasty dishes based on your preferences but also ensures they are nutritionally balanced — all through a collaborative team of AI agents.

---

## 🧠 Project Overview

This system consists of **two AI agents** working in a round-robin fashion to generate and validate a recipe. The user provides dietary preferences (e.g., "vegan", "high-protein", "low-carb") and the number of servings. The system returns a recipe tailored to the input and verified for nutritional soundness.

---

## 🎯 Project Goals

- ✅ Dynamically generate recipes based on user dietary preferences and serving size.
- ✅ Ensure each recipe is nutritionally balanced (calories, protein, fat, carbs).
- ✅ Showcase a working **multi-agent collaboration** using `autogen`.
- ✅ Leverage real ingredient data and nutritional calculations.

---

## 👥 Agents

### 1. **Recipe Creator Agent**
- **Function**: Generates a recipe using available ingredients from `ingredients.json`.
- **Tool Used**: `generate_recipe`
- **Responsibilities**:
  - Respect dietary preferences (e.g., vegan, vegetarian, low-carb).
  - Adjust portion sizes based on serving count.
  - Output a formatted recipe (name, ingredients, steps, servings).

### 2. **Nutrition Checker Agent**
- **Function**: Evaluates the nutritional value of the recipe.
- **Tool Used**: `check_nutrition`
- **Responsibilities**:
  - Calculate total and per-serving nutrition (calories, protein, fat, carbs).
  - Assess if the recipe is balanced based on predefined thresholds.
  - Suggest modifications if needed.

---

## 🛠️ Tools

### 🔸 `generate_recipe`
- Uses an ingredient database (`ingredients.json`) to construct a recipe.
- Filters ingredients based on preferences (e.g., no meat or dairy).
- Constructs logical steps and ingredients list.

### 🔸 `check_nutrition`
- Computes total and per-serving values for:
  - **Calories**
  - **Protein**
  - **Carbohydrates**
  - **Fats**
- Verifies against a basic nutritional model (e.g., sufficient protein, moderate calories).

---

## 🔄 Workflow

1. **User Input** (e.g., "Generate a vegan dinner for 2 people")
2. **Recipe Creator Agent** generates a draft recipe.
3. **Nutrition Checker Agent** evaluates the nutrition:
   - If unbalanced → feedback sent to the Recipe Agent.
   - If balanced → reply with `TERMINATE` and present final recipe.
4. **Loop** continues until a healthy, acceptable recipe is produced.

---

## ✅ Validation Criteria

- [x] Recipe output is well-formatted and includes ingredients, steps, and servings.
- [x] Nutrition is calculated per serving.
- [x] Recipe passes nutritional balance check.
- [x] Chat loop ends with a `TERMINATE` message once validated.

---

## 📁 Files in This Project

- `main.py`: Runs the agent group chat loop.
- `ingredients.json`: Contains ingredients and their nutritional data.
- `recipe_tools.py`: Functions for recipe generation and nutrition checking.
- `README.md`: Project documentation.

---

## 🚀 Example Task

> **Input**: “Generate a vegan dinner recipe for 2 people.”  
> **Output**:
> - 🥘 *Vegan Stir-Fry*
> - ✅ Balanced: 450 kcal/serving, 20g protein, 12g fat, 45g carbs.
> - ✅ Terminated after validation.

---

## 🤝 Credits

This project is part of a summer internship by [Jeevandas M S](https://github.com/jeevandas-jd), focused on interdisciplinary applications of AI agents.

