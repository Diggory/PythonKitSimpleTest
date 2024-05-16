//	A Simple test of PythonKit


import PythonKit
let os = Python.import("os")
let sys = Python.import("sys")

//	Python version that PythonKit is using
print("Python \(sys.version_info.major).\(sys.version_info.minor)")
print("Python Version: \(sys.version)")

//	Paths where Python looks for modules
print("Python PATH")
print(sys.path)


//	Try importing a module
do {
	let camelcase = try Python.attemptImport("camelcase")
} catch {
	print("Error importing module 'camelcase': \(error)")
}
