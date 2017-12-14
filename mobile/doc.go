// Copyright 2017 The zerium Authors
// This file is part of the zerium library.
//
// The zerium library is free software: you can redistribute it and/or modify
// it under the terms of the GNU Lesser General Public License as published by
// the Free Software Foundation, either version 3 of the License, or
// (at your option) any later version.
//
// The zerium library is distributed in the hope that it will be useful,
// but WITHOUT ANY WARRANTY; without even the implied warranty of
// MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
// GNU Lesser General Public License for more details.
//
// You should have received a copy of the GNU Lesser General Public License
// along with the zerium library. If not, see <http://www.gnu.org/licenses/>.

// Package zrmd contains the simplified mobile APIs to zerium.
//
// The scope of this package is *not* to allow writing a custom Zerium client
// with pieces plucked from zerium, rather to allow writing native dapps on
// mobile platforms. Keep this in mind when using or extending this package!
//
// API limitations
//
// Since gomobile cannot bridge arbitrary types between Go and Android/iOS, the
// exposed APIs need to be manually wrapped into simplified types, with custom
// constructors and getters/setters to ensure that they can be meaninfully used
// from Java/ObjC too.
//
// With this in mind, please try to limit the scope of this package and only add
// essentials without which mobile support cannot work, especially since manually
// syncing the code will be unwieldy otherwise. In the long term we might consider
// writing custom library generators, but those are out of scope now.
//
// Content wise each file in this package corresponds to an entire Go package
// from the zerium repository. Please adhere to this scoping to prevent this
// package getting unmaintainable.
//
// Wrapping guidelines:
//
// Every type that is to be exposed should be wrapped into its own plain struct,
// which internally contains a single field: the original zerium version.
// This is needed because gomobile cannot expose named types for now.
//
// Whenever a method argument or a return type is a custom struct, the pointer
// variant should always be used as value types crossing over between language
// boundaries might have strange behaviors.
//
// Slices of types should be converted into a single multiplicative type wrapping
// a go slice with the methods `Size`, `Get` and `Set`. Further slice operations
// should not be provided to limit the remote code complexity. Arrays should be
// avoided as much as possible since they complicate bounds checking.
//
// If a method has multiple return values (e.g. some return + an error), those
// are generated as output arguments in ObjC. To avoid weird generated names like
// ret_0 for them, please always assign names to output variables if tuples.
//
// Note, a panic *cannot* cross over language boundaries, instead will result in
// an undebuggable SEGFAULT in the process. For error handling only ever use error
// returns, which may be the only or the second return.
package zrmd
