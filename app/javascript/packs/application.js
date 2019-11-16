import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { showCheckboxes } from '../plugins/init_checkboxes_dropdown';

initMapbox();
initAutocomplete();
showCheckboxes();
