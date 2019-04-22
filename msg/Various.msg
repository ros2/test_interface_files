float32 float32_value_def 1.125
float64 float64_value_def 2.4
uint64 uint64_value
string string_value_def "bar"
float32[10] float32_arr
int32 array_alignment_check
float64[3] float64_arr_def [8.5, 1.2, 3.4]
string[3] string_arr
string[3] string_arr_def ["hello", "world", "!"]
float32[] unbounded_seq_def [1, 2]
float32[] unbounded_seq
# Regression test: check alignment of primitive field after sequence field is correct
int32 unbounded_alignment_check
float32[<=3] bounded_seq_def [3, 4]
float32[<=3] bounded_seq
# Regression test: check alignment of primitive field after sequence field is correct
int32 bounded_alignment_check
