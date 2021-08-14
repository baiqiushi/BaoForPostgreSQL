for n in {0..1411}
do
  python3 baoctl.py --add-test-query ../bao_train/bao_${n}.sql
done
