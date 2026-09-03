# 🧹 Vacuum Cleaner Intelligent Agent

### TY B.Tech. – Artificial Intelligence and Machine Learning

A simple **rule-based Vacuum Cleaner Intelligent Agent** implemented using **Prolog** to demonstrate the **PEAS (Performance Measure, Environment, Actuators, Sensors)** framework of an intelligent agent.

---

## 📌 Problem Statement

**Demonstrate PEAS Descriptors of Task Environment using Vacuum Cleaner Intelligent Agent Application.**

The objective is to design a simple intelligent agent that can identify dirty rooms, clean them, move between connected rooms, and stop when all rooms are clean.

---

## 🎯 Objectives

* To understand the **PEAS framework** for an intelligent agent.
* To implement a simple **Vacuum Cleaner Intelligent Agent using Prolog**.
* To understand rule-based decision making in Artificial Intelligence.
* To observe how an intelligent agent interacts with its environment and performs actions.

---

## 🧠 PEAS Description

PEAS stands for:

**P – Performance Measure**
**E – Environment**
**A – Actuators**
**S – Sensors**

| PEAS Component          | Description                                                                             |
| ----------------------- | --------------------------------------------------------------------------------------- |
| **Performance Measure** | Clean all dirty rooms, minimize unnecessary movement and stop when all rooms are clean. |
| **Environment**         | Three rooms: A, B and C. Rooms A and B are connected, and rooms B and C are connected.  |
| **Actuators**           | Clean the room, move between rooms and stop the vacuum cleaner.                         |
| **Sensors**             | Detect the current location of the vacuum cleaner and whether rooms contain dirt.       |

---

## 🏠 Environment

The environment contains three rooms:

```text
Room A  <------>  Room B  <------>  Room C
```

### Initial State

```text
Room A → Dirty
Room B → Clean
Room C → Dirty

Vacuum Cleaner → Room A
```

The agent starts from **Room A** and follows predefined rules to clean the environment.

---

## ⚙️ Working of the Agent

The agent follows these basic rules:

1. If the current room is dirty, clean it.
2. If a connected room is dirty, move towards that room.
3. Continue checking and performing actions.
4. When no dirt remains, stop the vacuum cleaner.

### Execution Flow

```text
             START
                │
                ▼
       Vacuum at Room A
                │
                ▼
        Is current room dirty?
           /            \
         YES             NO
          │               │
          ▼               ▼
      Clean Room A    Check connected
                          rooms
                           │
                           ▼
                    Move towards
                    dirty room
                           │
                           ▼
                    Clean Room C
                           │
                           ▼
                    Any dirt left?
                      /         \
                    YES          NO
                     │            │
                     └───► Repeat ▼
                                STOP
```

---

## 💻 Technology Used

| Technology | Purpose                                          |
| ---------- | ------------------------------------------------ |
| **Prolog** | Implementation of the intelligent agent          |
| **SWISH**  | Online Prolog development and execution platform |
| **GitHub** | Source code and project repository               |

---

## 📂 Project Structure

```text
AIML-Practical-1-Vacuum-Cleaner-Agent/
│
├── vacuum_cleaner.pl
├── README.md
└── screenshots/
    └── output.png
```

### File Description

| File                     | Description                     |
| ------------------------ | ------------------------------- |
| `vacuum_cleaner.pl`      | Complete Prolog source code     |
| `README.md`              | Project documentation           |
| `screenshots/output.png` | Screenshot of program execution |

---

## 📝 Source Code

The main Prolog program contains:

* Room definitions
* Room connections
* Initial conditions
* Decision rules
* Cleaning operation
* Movement operation
* Stop operation
* Main `start` predicate

The agent uses dynamic predicates such as:

```prolog
:- dynamic dirty/1.
:- dynamic vacuum_at/1.
```

These predicates allow the state of the environment to be updated during execution.

---

## ▶️ How to Run

### Option 1 – Using SWISH

Open the **SWISH Prolog** platform and load/copy the contents of:

```text
vacuum_cleaner.pl
```

Then execute:

```prolog
start.
```

### Option 2 – Using SWI-Prolog

Install SWI-Prolog and open the terminal in the project directory.

Load the program:

```prolog
[vacuum_cleaner].
```

Then execute:

```prolog
start.
```

---

## 📤 Sample Output

```text
Cleaned room a.
Moved from room a to room b.
Moved from room b to room c.
Cleaned room c.
All rooms are clean.
Vacuum cleaner stopped.
```

The output shows that the agent:

```text
Room A → Cleaned
    ↓
Room B → Moved through
    ↓
Room C → Cleaned
    ↓
All rooms clean → STOP
```

---

## 📊 Performance Evaluation

The agent is evaluated using the following performance measures:

* **Cleaning effectiveness:** All dirty rooms should be cleaned.
* **Correct decision making:** The agent should select appropriate actions based on the current state.
* **Task completion:** The agent should stop when no dirt remains.
* **Movement efficiency:** The agent should avoid unnecessary movement where possible.

For the given environment, the agent successfully cleans the dirty rooms and stops after completing the task.

---

## 🎓 Learning Outcomes

After completing this practical, the following concepts were understood:

* PEAS framework for intelligent agents.
* Rule-based intelligent agents.
* Facts and rules in Prolog.
* Dynamic predicates in Prolog.
* Updating the environment using `assert` and `retract`.
* Decision making based on the current environment.
* Basic implementation of an AI agent.

---

## 📸 Output Screenshot

The program execution screenshot is available in:

```text
screenshots/output.png
```

---

## 🔗 Repository

**Repository Name:**
`AIML-Practical-1-Vacuum-Cleaner-Agent`

**GitHub Repository:**
https://github.com/SANIKALCHAVAN/AIML-Practical-1-Vacuum-Cleaner-Agent

**Branch:**
`main`

**Latest Commit:**
`d176aff`

---

## 👩‍💻 Student Details

| Detail            | Information                                  |
| ----------------- | -------------------------------------------- |
| **Name**          | Sanika Laxman Chavan                         |
| **Branch**        | ENTC                                         |
| **Division**      | A                                            |
| **Batch**         | A3                                           |
| **Practical No.** | 1                                            |
| **Subject**       | Artificial Intelligence and Machine Learning |

---

## 📄 Practical Information

**Practical Title:** Vacuum Cleaner Expert System

**Problem Statement:**
Demonstrate PEAS Descriptors of Task Environment using Vacuum Cleaner Intelligent Agent Application.

**Programming Language:** Prolog

**Platform:** SWISH

---

## 📌 Conclusion

The Vacuum Cleaner Intelligent Agent was successfully implemented using Prolog. The practical demonstrated the PEAS framework and showed how a simple rule-based agent can perceive the environment, make decisions, perform actions, and achieve its goal.

The practical provided an understanding of the basic working of intelligent agents and rule-based reasoning in Artificial Intelligence.

---

## ⭐ Acknowledgement

This practical was completed as part of the **Artificial Intelligence and Machine Learning** practical coursework for TY B.Tech.

---
