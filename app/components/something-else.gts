import Component from '@glimmer/component';
import { tracked } from '@glimmer/tracking';
import { action } from '@ember/object';
import { later } from '@ember/runloop';
import { Button } from '@frontile/buttons';
import { Drawer } from '@frontile/overlays';
import { on } from '@ember/modifier';

export default class Demo extends Component {
  @tracked isOpen = false;
  @tracked isLoading = false;

  @action toggle() {
    this.isOpen = !this.isOpen;
  }

  @action save() {
    this.isLoading = true;

    later(
      this,
      () => {
        this.isLoading = false;
        this.isOpen = false;
      },
      1000
    );
  }
  <template>
    <Button {{on "click" this.toggle}}>
      Open Drawer
    </Button>

    <Drawer @isOpen={{this.isOpen}} @onClose={{this.toggle}} as |d|>
      <d.Header>Title</d.Header>
      <d.Body>
        <p>Some contents...</p>
        <p>Some contents...</p>
        <p>Some contents...</p>
      </d.Body>
      <d.Footer>
        <Button @appearance="minimal" class="mr-4" {{on "click" this.toggle}}>
          Cancel
        </Button>
        <Button
          @intent="primary"
          disabled={{this.isLoading}}
          {{on "click" this.save}}
        >
          {{if this.isLoading "Loading..." "Save"}}
        </Button>
      </d.Footer>
    </Drawer>
  </template>
}
