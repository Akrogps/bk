import "bootstrap";
import 'mapbox-gl/dist/mapbox-gl.css';

import { initMapbox } from '../plugins/init_mapbox';
import { initAutocomplete } from '../plugins/init_autocomplete';
import { initShowCheckboxes } from '../plugins/init_show_checkboxes';
import { initShowSelectedFields } from '../plugins/init_show_selected_fields';
import { initHideMap } from '../plugins/init_hide_map';
import { initShowOpenNow } from '../plugins/init_show_open_now';
import { initHideInputCheckboxes } from '../plugins/init_hide_input_checkboxes';

initMapbox();
initAutocomplete();
initShowCheckboxes("checkboxes1", "select-box1");
initShowCheckboxes("checkboxes2", "select-box2");
initShowSelectedFields(".elements-selected1", 11);
initShowSelectedFields(".elements-selected2", 17);
initHideMap();
initShowOpenNow();
initHideInputCheckboxes();
