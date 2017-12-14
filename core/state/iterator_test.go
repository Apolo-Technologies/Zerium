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

package state

import (
	"bytes"
	"testing"

	"github.com/apolo-technologies/zerium/zrmcom"
)

// Tests that the node iterator indeed walks over the entire database contents.
func TestNodeIteratorCoverage(t *testing.T) {
	// Create some arbitrary test state to iterate
	db, mem, root, _ := makeTestState()

	state, err := New(root, db)
	if err != nil {
		t.Fatalf("failed to create state trie at %x: %v", root, err)
	}
	// Gather all the node hashes found by the iterator
	hashes := make(map[zrmcom.Hash]struct{})
	for it := NewNodeIterator(state); it.Next(); {
		if it.Hash != (zrmcom.Hash{}) {
			hashes[it.Hash] = struct{}{}
		}
	}

	// Cross check the hashes and the database itself
	for hash := range hashes {
		if _, err := mem.Get(hash.Bytes()); err != nil {
			t.Errorf("failed to retrieve reported node %x: %v", hash, err)
		}
	}
	for _, key := range mem.Keys() {
		if bytes.HasPrefix(key, []byte("secure-key-")) {
			continue
		}
		if _, ok := hashes[zrmcom.BytesToHash(key)]; !ok {
			t.Errorf("state entry not reported %x", key)
		}
	}
}
