import { Component } from '@angular/core';

@Component({
  selector: 'hokiegeek-app',
  template: `
    <nav>
      <a routerLink="" routerLinkActive="active">home</a>
      <a routerLink="/tea" routerLinkActive="active">tea</a>
    </nav>
    <router-outlet></router-outlet>
    <!--
    TESTING
    -->
  `
})
export class AppComponent {
}
