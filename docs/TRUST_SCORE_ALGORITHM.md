# Trust Score Algorithm Documentation

## Overview
The Trust Score is a composite index that evaluates the reliability of users based on various factors. The score is calculated using the following formula:

### Formula
**Trust Score = OnTimeRate * 40% + ConsistencyRate * 25% + HistoryScore * 20% + HeartBonus * 15%**

## Calculation Components
1. **OnTimeRate:** Measures the percentage of on-time completions.
2. **ConsistencyRate:** Evaluates the reliability of performance over time.
3. **HistoryScore:** Assesses past interaction quality and quantity.
4. **HeartBonus:** A bonus for exceptional contributions or support.

### Example Calculation
Assuming the following values:
- OnTimeRate = 90% (0.9)
- ConsistencyRate = 80% (0.8)
- HistoryScore = 700 / 1000
- HeartBonus = 50

Using the formula:

**Trust Score = 0.9 * 0.4 + 0.8 * 0.25 + (700/1000) * 0.2 + 50 * 0.15**  
**Trust Score = 0.36 + 0.2 + 0.14 + 7.5 = 8.20**

## Trust Tier Mapping
- **Excellent:** 850+
- **Good:** 750-849
- **Average:** 500-749
- **Poor:** 0-499

## Real-World Calculation Examples
1. **User A:**
   - OnTimeRate: 95% 
   - ConsistencyRate: 85% 
   - HistoryScore: 800/1000 
   - HeartBonus: 100  
   **Trust Score = 0.95*0.4 + 0.85*0.25 + 0.8*0.2 + 100*0.15 = 8.20**

2. **User B:**  
   - OnTimeRate: 60% 
   - ConsistencyRate: 50% 
   - HistoryScore: 300/1000 
   - HeartBonus: 20  
   **Trust Score = 0.60*0.4 + 0.50*0.25 + 0.3*0.2 + 20*0.15 = 3.75**

## Python Implementation
You can implement the Trust Score calculation in Python as follows:
```python
class TrustScore:
    def __init__(self, on_time_rate, consistency_rate, history_score, heart_bonus):
        self.on_time_rate = on_time_rate
        self.consistency_rate = consistency_rate
        self.history_score = history_score
        self.heart_bonus = heart_bonus
    
    def calculate_score(self):
        return (self.on_time_rate * 0.4 + \
                self.consistency_rate * 0.25 + \
                (self.history_score / 1000) * 0.2 + \
                self.heart_bonus * 0.15) * 100

# Example usage:
user_score = TrustScore(0.9, 0.8, 700, 50)
print(f'Trust Score: {user_score.calculate_score()}')  # Output: Trust Score: 820.0
```