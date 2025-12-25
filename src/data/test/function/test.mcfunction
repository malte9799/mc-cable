@if MC=1.21.5
say 1.21.5
@endif

@if MC>=1.21.8
say >=1.21.8
@else
say <1.21.8
@endif

@if MC>1.21.9
say >1.21.9
@else
say <=1.21.9
@endif

@if MC<=1.21.7
say <=1.21.7
@else
say >1.21.7
@endif

@if MC<1.21.6
say <1.21.6
@else
say >=1.21.6
@endif