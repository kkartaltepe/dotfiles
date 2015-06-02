for f in *.h.rs; do
    mv -- "$f" "${f%.h.rs}.rs"
done
