proc count_words {text} {
    set wordCount 0
    foreach word [split $text] {
        if {[string length $word] > 0} {
            incr wordCount
        }
    }
    return $wordCount
}

# this will fail when the input string contains multiple spaces between words
puts [count_words {this is a test string}]
puts [count_words {this  is  a  test  string}]