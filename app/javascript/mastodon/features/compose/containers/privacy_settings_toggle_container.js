import { connect } from 'react-redux';
import { defineMessages, injectIntl } from 'react-intl';
import PrivacySettingsToggle from '../components/privacy_settings_toggle';
import { changeSetting, saveSettings } from '../../../actions/settings';

const mapStateToProps = state => ({
  settings: state.getIn(['compose']),
});

const mapDispatchToProps = (dispatch, { intl }) => ({

  onChange (key, checked) {
    dispatch(changeSetting(['compose', ...key], checked));
  },

  onSave () {
    dispatch(saveSettings());
  },

});

export default connect(mapStateToProps, mapDispatchToProps)(PrivacySettingsToggle);
