#!/usr/bin/env bash
real-ppi () {
    
    while read -r display width_dimension_mm height_dimension_mm width_resolution height_resolution; do
    
        width_dimension_in="$(bc <<< "scale=6; ($width_dimension_mm * 0.039370079)/1")"
        height_dimension_in="$(bc <<< "scale=6; ($height_dimension_mm * 0.039370079)/1")"
    
        width_ppi="$(bc <<< "scale=6; $width_resolution / $width_dimension_in")"
        height_ppi="$(bc <<< "scale=6; $height_resolution / $height_dimension_in")"
    
        awk '{for (i=1; i<=NF; i++) $i = int( ($i+2) / 25) * 25} 1' <<< "$width_ppi"
        
        
    done < <(xrandr --query | perl -e 'undef $/; $s = <>; while ($s =~ 
        /
            ^                              # start of the a line
            [[:space:]\t]*
            ([^\s]+)                       # capture the name of the display device
            [[:space:]\t]+
            \bconnected\b                  # must be connected display device
            .*?
            (\d+)mm                        # capture the width dimension
            [[:space:]\t]*x[[:space:]\t]*
            (\d+)mm                        # capture the height dimension
            .*\n
            (?:                            # iterate through all the non-preferred modes for the display device
                ^[[:space:]\t]+
                [^+\n]+                    # any mode without a literal + is a non-preferred mode
                \n
            )*
            ^[[:space:]\t]+                # now capture the preferred mode
            (\d+)                          # capture the preferred resolution width
            [[:space:]\t]*x[[:space:]\t]*
            (\d+)                          # capture the preferred resolution height
            .*?
            \+                             # preferred mode has a literal +
            .*$
        /gmx
    ) {
        print "$1 $2 $3 $4 $5\n";
    }')
    
}

real-ppi
