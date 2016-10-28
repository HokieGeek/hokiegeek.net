import { HdotnPage } from './app.po';

describe('hdotn App', function() {
  let page: HdotnPage;

  beforeEach(() => {
    page = new HdotnPage();
  });

  it('should display message saying app works', () => {
    page.navigateTo();
    expect(page.getParagraphText()).toEqual('app works!');
  });
});
