# Unicode Properties

## UPDATE

```shell
# update unicode property predicates and tests
cargo run -- generated/unicode_data.mbt generated/unicode_data_test.mbt
# update printable
python3 src/printable.py > generated/printable.mbt
```