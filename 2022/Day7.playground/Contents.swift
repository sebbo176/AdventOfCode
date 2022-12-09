import Foundation

let greeting = "Hello, day 7"

let sampleData =
"""
$ cd /
$ ls
dir a
14848514 b.txt
8504156 c.dat
dir d
$ cd a
$ ls
dir e
29116 f
2557 g
62596 h.lst
$ cd e
$ ls
584 i
$ cd ..
$ cd ..
$ cd d
$ ls
4060174 j
8033020 d.log
5626152 d.ext
7214296 k
"""

class File {

    init(input: String) {
        let data = input
            .split(separator: " ")
            .map { String($0) }
        self.size = Int(data.first!)!
        self.name = data.last!
        print("created File \(name) \(size)")
    }

    let name: String
    let size: Int
}

class Folder {

    init(name: String, path: String) {
        self.name = name
        self.path = path
    }

    init(input: String, path: String) {
        let data = input
            .split(separator: " ")
            .map { String($0)}
        self.name = data.last!
        self.path = path
        print("Created Folder \(name)")
    }

    let name: String
    let path: String
    var files: [File] = []
    var folders: [Folder] = []

    var totalSizeOfFiles: Int {
        files
            .map { $0.size}
            .reduce(0, +)
    }

    func subFolders(folder: inout [Folder])  {
        folder.append(contentsOf: folders)

        for index in 0..<folders.count {
             folders[index].subFolders(folder: &folder)
        }
    }

    func add(file: File) {
        files.append(file)
    }

    func add(folder: Folder) {
        folders.append(folder)
    }
}

class HardDrive {

    init(disk: Folder) {
        self.disk = disk
        self.currentFolder = disk
    }

    var disk: Folder

    var currentFolder: Folder

    func navigateTo(path: String)  {
        let pathDetails = path
            .split(separator: "/")
            .map { String($0) }

        if pathDetails.count == 1 {
            self.currentFolder = disk
        }
        var folder: Folder!
        var currentFolder = disk
        pathDetails.forEach { subPath in
            print(subPath)
            if subPath != "root" {
                if let foundFolder = currentFolder.folders.first(where: { $0.name == subPath }) {
                    folder = foundFolder
                }
            } else {
                folder = disk
            }
        }
        self.currentFolder = folder
    }
}

struct Command {

    let command: String

    var isUserInput: Bool {
        command.starts(with: "$")
    }

    var isListFiles: Bool {
        guard isUserInput else { return false }
        return command
            .split(separator: " ")
            .map { String($0) }[1] == "ls" ? true : false
    }

    var isFile: Bool {
        return Array(command).first!.isNumber
    }

    var isFolder: Bool {
        command
            .split(separator: " ")
            .map { String($0) }
            .first! == "dir"
    }

    var isChangeDirectory: String? {
        guard isUserInput else { return nil }
        let data = command
            .split(separator: " ")
            .map { String($0) }
        if data.count < 3 { return nil }
        if data[2] == "/" { return nil }
        if data[2] == ".." { return nil }
        if data[1] == "cd" { return data[2] }
        return nil
    }

    var isGoUpOneLevel: Bool {
        guard isUserInput else { return false }
        let data = command
            .split(separator: " ")
            .map { String($0) }
        if data.count < 3 { return false }
        if data[2] == "/" { return false }
        if data[2] == ".." { return true }
        return false
    }
}



func loadHdd(input: String) {

    var root = Folder(name: "root", path: "root")
    var hardDrive = HardDrive(disk: root)

    let commands = input
        .split(separator: "\n")
        .map { String($0) }
        .map { Command(command: $0 ) }
    var path = root.path
    for i in 0...commands.count - 1 {
        print(i)
        if commands[i].isListFiles {
            print("is list file")
            var index = i + 1
            while (!commands[index].isUserInput) {
                if commands[index].isFile {
                    hardDrive.currentFolder.add(file: File(input: commands[index].command))
                }
                if commands[index].isFolder {
                    hardDrive.currentFolder.add(folder: Folder(input: commands[index].command, path: "\(hardDrive.currentFolder.name)/\(commands[index].command.split(separator: " ").last!)"))
                }
                index += 1
                if index == commands.count { break }
            }
        }

        if let changeFolderTo = commands[i].isChangeDirectory {
            path += "/\(changeFolderTo)"
            print("change folder to: \(path)")
            hardDrive.navigateTo(path: path)
        }

        if commands[i].isGoUpOneLevel {
            var editPath = path.split(separator: "/").map { String($0) }
            let removed = editPath.removeLast()
            path = editPath.joined(separator: "/")
                print("Go up one folder to: \(path)")
                hardDrive.navigateTo(path: path)
        }
    }



    var allFolders: [Folder] = [hardDrive.disk]
    hardDrive.disk.subFolders(folder: &allFolders)

    allFolders.removeAll(where: { $0.totalSizeOfFiles > 100000 } )
    let bigFolder = allFolders
        .map { $0.totalSizeOfFiles }
        .reduce(0, +)
    print(bigFolder)
}

loadHdd(input: sampleData)
