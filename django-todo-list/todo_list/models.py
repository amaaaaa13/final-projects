from django.db import models

class List(models.Model):
    item = models.CharField(max_length=200)
    description = models.TextField(blank=True, null=True)
    color = models.CharField(max_length=20, default='pastel-brown')  # Add this line for color
    date = models.DateField(null=True, blank=True)
    completed = models.BooleanField(default=False)

    def __str__(self):
        return self.item
