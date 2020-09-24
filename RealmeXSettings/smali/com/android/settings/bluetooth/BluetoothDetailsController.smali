.class public abstract Lcom/android/settings/bluetooth/BluetoothDetailsController;
.super Lcom/android/settingslib/core/a;
.source "BluetoothDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/d;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/f;
.implements Lcom/android/settingslib/core/lifecycle/a/h;
.implements Lcom/android/settingslib/d/g$a;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Landroidx/preference/PreferenceFragmentCompat;

.field protected final c:Lcom/android/settingslib/d/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/preference/PreferenceFragmentCompat;Lcom/android/settingslib/d/g;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->b:Landroidx/preference/PreferenceFragmentCompat;

    .line 49
    iput-object p3, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->c:Lcom/android/settingslib/d/g;

    .line 50
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method protected abstract a(Landroidx/preference/PreferenceScreen;)V
.end method

.method public final displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->a(Landroidx/preference/PreferenceScreen;)V

    .line 77
    invoke-super {p0, p1}, Lcom/android/settingslib/core/a;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->a()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/g;->b(Lcom/android/settingslib/d/g$a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDetailsController;->c:Lcom/android/settingslib/d/g;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/d/g;->a(Lcom/android/settingslib/d/g$a;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDetailsController;->a()V

    return-void
.end method
