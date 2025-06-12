import signal
import sys

GENES = '''abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP 
QRSTUVWXYZ 1234567890, .-;:_!"#%&/()=?@${[]}'''
TARGET = "he"
POPULATION_SIZE = 100

class Individual:
    def __init__(self, chromosome, rand_fn):
        self.chromosome = chromosome
        self.rand_fn = rand_fn
        self.fitness = self.cal_fitness()

    @classmethod
    def mutated_genes(cls, rand_fn):
        idx = rand_fn() % len(GENES)
        return GENES[idx]

    @classmethod
    def create_gnome(cls, rand_fn):
        return [cls.mutated_genes(rand_fn) for _ in range(len(TARGET))]

    def mate(self, par2):
        child_chromosome = []

        for gp1, gp2 in zip(self.chromosome, par2.chromosome):
            prob = self.rand_fn() / float(256)  # assuming SPI gives 8-bit values
            print(f"prob: {prob:.4f} → chosen: {'gp1' if prob < 0.45 else 'gp2' if prob < 0.90 else 'mutate'}")

            if prob < 0.45:
                child_chromosome.append(gp1)
            elif prob < 0.90:
                child_chromosome.append(gp2)
            else:
                child_chromosome.append(self.mutated_genes(self.rand_fn))
        return Individual(child_chromosome, self.rand_fn)

    def cal_fitness(self):
        return sum(gs != gt for gs, gt in zip(self.chromosome, TARGET))

def run_ga_with_rng(rng_pool):
    def rand_fn():
        value = rng_pool.pop(0)
        rng_pool.append(value)
        print(f"HW RNG used: {value}")

        return value

    generation = 1
    population = [
        Individual(Individual.create_gnome(rand_fn), rand_fn)
        for _ in range(POPULATION_SIZE)
    ]


# Then your normal GA loop
    
    while True:
        population = sorted(population, key=lambda x: x.fitness)

        if population[0].fitness == 0:
            break

        new_generation = []
        new_generation.extend(population[:POPULATION_SIZE // 10])

        for _ in range(POPULATION_SIZE - len(new_generation)):
            parent1 = population[rand_fn() % 50]
            parent2 = population[rand_fn() % 50]
            child = parent1.mate(parent2)
            new_generation.append(child)

        population = new_generation
        print("Generation: {}\tString: {}\tFitness: {}".format(
            generation,
            "".join(population[0].chromosome),
            population[0].fitness))
        generation += 1

    print("\u2705 Done at Generation {}: {}\n".format(
        generation, "".join(population[0].chromosome)))
    
def handle_interrupt(sig, frame):
    print("\nGracefully exiting...")
    sys.exit(0)

signal.signal(signal.SIGINT, handle_interrupt)