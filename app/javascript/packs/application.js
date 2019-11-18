import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initClickOutside } from '../plugins/init_click_outside';

initMapbox();
initAutocomplete();
initClickOutside("checkboxes1", "select-box1");
initClickOutside("checkboxes2", "select-box2");
