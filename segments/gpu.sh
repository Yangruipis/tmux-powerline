run_segment() {
    percentage=`nvidia-smi | grep Default | tr -s ' '| awk -F '[ ]' '{ total1 += $9; total2 += $11} END {print int(100*total1/total2)}'`
    tmp=`nvidia-smi | grep Default | tr -s ' '| awk -F '[ ]' '{ total1 += $9; total2 += $11} END {print int(total1/NR)"/"total2/NR" MiB"}'`


    if (($percentage >= 80))
    then
    	  echo "[空|閑|半|緊|滿|-無-|] "${tmp}
    elif (($percentage >= 60))
    then
    	  echo "[空|閑|半|緊|-滿-|無] "${tmp}
    elif (($percentage >= 40))
    then
    	  echo "[空|閑|半|-緊-|滿|無] "${tmp}
    elif (($percentage >= 20))
    then
    	  echo "[空閑|-半-|緊|滿|無] "${tmp}
    elif (($percentage >= 5))
    then
    	  echo "[空|-閑-|半|緊|滿|無] "${tmp}
    else
    	  echo "[|-空-|閑|半|緊|滿|無] "${tmp}
    fi
    return 0
}
