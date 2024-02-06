from django.shortcuts import render, redirect
from django.contrib import messages
from .models import List
from .forms import ListForm

def home(request):
    if request.method == "POST":
        form = ListForm(request.POST)
        if form.is_valid():
            form.save()
            messages.success(request, 'The item has been added to the list successfully!')
            return redirect('home')
    else:
        all_items = List.objects.all()
        form = ListForm()  # Create a new form instance
        return render(request, 'home.html', {'all_items': all_items, 'form': form})

def about(request):
    return render(request, 'about.html', {})

def delete(request, item_id):
    item = List.objects.get(pk=item_id)
    item.delete()
    messages.success(request, 'The item has been deleted successfully!')
    return redirect('home')

def cross_off(request, item_id):
    item = List.objects.get(pk=item_id)
    item.completed = True
    item.save()
    return redirect('home')

def uncross(request, item_id):
    item = List.objects.get(pk=item_id)
    item.completed = False
    item.save()
    return redirect('home')

def edit(request, item_id):
    item = List.objects.get(pk=item_id)
    if request.method == "POST":
        form = ListForm(request.POST, instance=item)
        if form.is_valid():
            form.save()
            messages.success(request, 'The item has been edited successfully!')
            return redirect('home')   
    else:
        form = ListForm(instance=item)
        return render(request, 'edit.html', {'item': item, 'form': form})
