import { NgVstsPage } from './app.po';

describe('ng-vsts App', () => {
  let page: NgVstsPage;

  beforeEach(() => {
    page = new NgVstsPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
