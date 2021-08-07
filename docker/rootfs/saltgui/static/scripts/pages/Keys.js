/* global */

import {JobsSummaryPanel} from "../panels/JobsSummary.js";
import {KeysPanel} from "../panels/Keys.js";
import {Page} from "./Page.js";

export class KeysPage extends Page {

  constructor (pRouter) {
    super("keys", "Keys", "page-keys", "button-keys", pRouter);

    this.keys = new KeysPanel();
    super.addPanel(this.keys);
    this.jobs = new JobsSummaryPanel();
    super.addPanel(this.jobs);
  }

  handleSaltAuthEvent (pData) {
    this.keys.handleSaltAuthEvent(pData);
  }

  handleSaltKeyEvent (pData) {
    this.keys.handleSaltKeyEvent(pData);
  }

  handleSaltJobRetEvent (pData) {
    this.jobs.handleSaltJobRetEvent(pData);
  }
}