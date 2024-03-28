import { CommonModule } from '@angular/common';
import { Component } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

@Component({
  selector: 'app-home',
  standalone: true,
  imports: [CommonModule],
  templateUrl: './home.component.html',
  styleUrl: './home.component.css'
})
export class HomeComponent {

message: String = '';
viewGirlsDiv: Boolean = false;
viewWorkDiv: Boolean = false;
viewInfoDiv: Boolean = false;

  viewGirls(){
this.viewGirlsDiv = !this.viewGirlsDiv;
 this.message = "Hi! We are java girls...";
  }

  viewWork(){
 this.viewWorkDiv = !this.viewWorkDiv;   
  this.message = "How do we work...";
  }

  viewInfo(){
 this.viewInfoDiv = !this.viewInfoDiv;    
    this.message = "Our contacts are...";
  }
}
