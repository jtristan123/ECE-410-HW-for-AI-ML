import random

GENES = '''abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOP 
QRSTUVWXYZ 1234567890, .-;:_!"#%&/()=?@${[]}'''
TARGET = "hello HW410 class!"
POPULATION_SIZE = 100

class Individual:
    def __init__(self, chromosome):
        self.chromosome = chromosome
        self.fitness = self.cal_fitness()

    @classmethod
    def mutated_genes(cls):
        return random.choice(GENES)

    @classmethod
    def create_gnome(cls):
        return [cls.mutated_genes() for _ in range(len(TARGET))]

    def mate(self, par2):
        child_chromosome = []

        for gp1, gp2 in zip(self.chromosome, par2.chromosome):
            prob = random.random()  # use Python random for crossover/mutation
            if prob < 0.45:
                child_chromosome.append(gp1)
            elif prob < 0.90:
                child_chromosome.append(gp2)
            else:
                child_chromosome.append(self.mutated_genes())
        return Individual(child_chromosome)

    def cal_fitness(self):
        return sum(gs != gt for gs, gt in zip(self.chromosome, TARGET))

def run_ga_with_rng(rng_pool):
    rng_used = 0
    def rand_fn():  # used ONLY for mating selection
        nonlocal rng_used
        value = rng_pool.pop(0)
        rng_pool.append(value)
        rng_used +=1
        print(f"HW RNG (mating): {value}")

        return value

    generation = 1
    population = [Individual(Individual.create_gnome()) for _ in range(POPULATION_SIZE)]

    while True:
        population = sorted(population, key=lambda x: x.fitness)

        if population[0].fitness == 0:
            break

        new_generation = []
        new_generation.extend(population[:POPULATION_SIZE // 10])  # top 10%

        # 🔁 Use HW rand_fn ONLY for selecting parents
        for _ in range(POPULATION_SIZE - len(new_generation)):
            parent1 = population[rand_fn() % 50]
            parent2 = population[rand_fn() % 50]
            child = parent1.mate(parent2)
            new_generation.append(child)

        population = new_generation
        print(f"Generation: {generation}\tString: {''.join(population[0].chromosome)}\tFitness: {population[0].fitness}")
        generation += 1

    print(f"✅ Done at Generation {generation}: {''.join(population[0].chromosome)}")
    print(f"total RNG used: {rng_used}")
