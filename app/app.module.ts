import { NgModule }       from '@angular/core';
import { BrowserModule }  from '@angular/platform-browser';
import { RouterModule }   from '@angular/router';

import { AppComponent }   from './app.component';
import { HomeComponent }  from './home.component';

import { HgTeaModule }    from 'hg-tea/app/app.module';

@NgModule({
  imports: [
    BrowserModule,
    HgTeaModule,
    RouterModule.forRoot([
        { path: '', component: HomeComponent },
    ])
  ],
  declarations: [
    AppComponent,
    HomeComponent,
  ],
  bootstrap: [ AppComponent ]
})
export class AppModule {
}
