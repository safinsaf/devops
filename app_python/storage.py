import pathlib


class Storage:
    def __init__(self, dir_str, filename):
        self.dir = pathlib.Path(dir_str)
        self.path = self.dir / filename
        self.reset()

    def add_data(self, data):
        with self.path.open('a') as file:
            file.write(data + "\n")

    def get_data(self):
        return self.path.read_text()

    def reset(self):
        self.dir.mkdir(parents=True, exist_ok=True)
        self.path.touch(exist_ok=True)
        self.path.write_text("")



if __name__ == "__main__":
    storage = Storage("files", "visits.txt")
    storage.add_data("hello")
    storage.add_data("world")
    storage.add_data("!")
    print(storage.get_data())
    storage.reset()