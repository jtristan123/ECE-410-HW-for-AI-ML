import random
import pyrtl
from pyrtl import output_to_verilog

# === 1) PyRTL LFSR definition with built-in reset_value ===
#   seed the LFSR to 0xACE1 at time zero, then it shifts each cycle
lfsr_reg = pyrtl.Register(bitwidth=16, name='lfsr_reg', reset_value=0xACE1)
lfsr_out = pyrtl.Output(bitwidth=16, name='lfsr_out')
lfsr_out <<= lfsr_reg

# taps for x^16 + x^14 + x^13 + x^11 + 1
tap15 = lfsr_reg[15]
tap13 = lfsr_reg[13]
tap12 = lfsr_reg[12]
tap10 = lfsr_reg[10]
feedback = tap15 ^ tap13 ^ tap12 ^ tap10

# mask, logical shift, OR in feedback
lower15    = lfsr_reg & pyrtl.Const(0x7FFF)           # keep bits [14:0]
shifted    = pyrtl.shift_left_logical(lower15, 1)    # move into [15:1]
next_state = shifted | feedback                      # new bit0 = feedback

# update register each cycle
lfsr_reg.next <<= next_state

# === 2) Simulator helper ===
sim = pyrtl.Simulation()
def hw_rand():
    sim.step({})                   # tick one cycle
    return sim.inspect('lfsr_out') # return 16-bit word

# === 3) Genetic Algorithm parameters & classes ===
POPULATION_SIZE = 100
GENES = (
    'abcdefghijklmnopqrstuvwxyz'
    'ABCDEFGHIJKLMNOPQRSTUVWXYZ'
    ' 1234567890,.-;:_!"#%&/()=?@${[]}'
)
TARGET = "Josue"

class Individual:
    def __init__(self, chromo):
        self.chromosome = chromo
        self.fitness = self.cal_fitness()

    @classmethod
    def mutated_genes(cls):
        idx = hw_rand() % len(GENES)
        return GENES[idx]

    @classmethod
    def create_gnome(cls):
        return [cls.mutated_genes() for _ in range(len(TARGET))]

    def mate(self, other):
        child = []
        for g1, g2 in zip(self.chromosome, other.chromosome):
            prob = hw_rand() / float(2**16)
            if prob < 0.45:
                child.append(g1)
            elif prob < 0.90:
                child.append(g2)
            else:
                child.append(self.mutated_genes())
        return Individual(child)

    def cal_fitness(self):
        return sum(a != b for a, b in zip(self.chromosome, TARGET))

def main():
    # initialize population
    population = [Individual(Individual.create_gnome())
                  for _ in range(POPULATION_SIZE)]
    generation = 1

    while True:
        # sort by fitness
        population.sort(key=lambda x: x.fitness)
        best = population[0]
        # done?
        if best.fitness == 0:
            print(f"Done at Gen {generation}: {''.join(best.chromosome)}")
            break

        # collect elites (top 10%)
        next_gen = population[:POPULATION_SIZE // 10]

        # fill rest by mating top 50
        for _ in range(POPULATION_SIZE - len(next_gen)):
            i1 = hw_rand() % 50
            i2 = hw_rand() % 50
            next_gen.append(population[i1].mate(population[i2]))

        population = next_gen
        print(f"Gen {generation}: {''.join(best.chromosome)} (fit={best.fitness})")
        generation += 1

if __name__ == "__main__":
    main()




