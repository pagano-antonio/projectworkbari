import { Component } from '@angular/core';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

message: String = '';

  viewGirls(){
    this.message = "Hi! We are java girls...";
  }

  viewWork(){
    this.message = "How do we work...";
  }

  viewInfo(){
    this.message = "Our contacts are...";
  }

//da home se clicco il bottone javagirls mi riporta alla pagina java girls
//da home se clicco la parte strumenti 



}
