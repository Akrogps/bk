import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initShowCheckboxes } from '../plugins/init_show_checkboxes';

initMapbox();
initAutocomplete();
initShowCheckboxes("checkboxes1", "select-box1");
initShowCheckboxes("checkboxes2", "select-box2");
