import { ComponentFixture, TestBed } from '@angular/core/testing';

import { JavagirlsComponent } from './javagirls.component';

describe('JavagirlsComponent', () => {
  let component: JavagirlsComponent;
  let fixture: ComponentFixture<JavagirlsComponent>;

  beforeEach(async () => {
    await TestBed.configureTestingModule({
      imports: [JavagirlsComponent]
    })
    .compileComponents();
    
    fixture = TestBed.createComponent(JavagirlsComponent);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  it('should create', () => {
    expect(component).toBeTruthy();
  });
});
