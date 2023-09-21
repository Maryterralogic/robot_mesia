import random
import string


class UsernameGenerator:
    def __init__(self):
        self.used_usernames = set()

    def generate_username(self, length=8):
        while True:
            username = ''.join(random.choices(string.ascii_letters + string.digits, k=length))
            if username not in self.used_usernames:
                self.used_usernames.add(username)
                yield username  # Use 'yield' instead of 'return'


# Example usage with a generator:
if __name__ == "__main__":
    generator = UsernameGenerator()

    # Generate and print 10 unique usernames one by one
    for _ in range(10):
        username = next(generator.generate_username())  # Use 'next' to get the next generated username
        print("Generated Username:", username)
