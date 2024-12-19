proc count_words {text} {
    set wordCount 0
    foreach word [regexp -all -inline {[^\s]+ } $text] {
        incr wordCount
    }
    return $wordCount
}

# This version correctly handles multiple spaces
puts [count_words {this is a test string}]
puts [count_words {this  is  a  test  string}]