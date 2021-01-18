import GRDB

public struct SomeDBStuff{
    var text = "Hello, World!"

    public func foo() -> String {
        return "bar"
    }

    public func createSimpleDB(dbPath: String) throws {
        let dbQueue = try DatabaseQueue(path: dbPath)

        try dbQueue.write { db in
            try db.execute(sql: """
            CREATE TABLE player (
                id INTEGER PRIMARY KEY AUTOINCREMENT,
                name TEXT NOT NULL,
                score INT)
            """)

            try db.execute(
                sql: "INSERT INTO player (name, score) VALUES (?, ?)",
                arguments: ["Barbara", 1000])

            try db.execute(
                sql: "UPDATE player SET score = :score WHERE id = :id",
                arguments: ["score": 1000, "id": 1])
        }
    }
}
