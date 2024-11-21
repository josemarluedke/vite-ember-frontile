import Route from 'ember-route-template';
import { pageTitle } from 'ember-page-title';
import Dropdown from 'ts-my-fancy-app/components/dropdown';
import { Chip } from '@frontile/buttons';
import SomethingElse from 'ts-my-fancy-app/components/something-else';

export default Route(
  <template>
    {{pageTitle "TsMyFancyApp"}}

    <Dropdown />

    <div>
      <Chip @appearance="default">Default</Chip>
      <Chip @appearance="outlined">Outlined</Chip>
      <Chip @appearance="faded">Faded</Chip>
    </div>

    <SomethingElse />

    {{outlet}}

    <div class="bg-red-400 text-white">Text</div>
    {{! The following component displays Ember's default welcome message. }}
    {{! Feel free to remove this! }}
  </template>
);
