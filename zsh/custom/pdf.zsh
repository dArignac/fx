function pdf_rotate_clockwise() {
    pdftk $1 cat 1-endeast output $2
}
function pdf_rotate_counter_clockwise() {
    pdftk $1 cat 1-endwest output $2
}