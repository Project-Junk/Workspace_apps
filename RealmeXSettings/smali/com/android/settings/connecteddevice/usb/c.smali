.class public abstract Lcom/android/settings/connecteddevice/usb/c;
.super Lcom/android/settingslib/core/a;
.source "UsbDetailsController.java"

# interfaces
.implements Lcom/android/settings/core/d;


# instance fields
.field protected final a:Landroid/content/Context;

.field protected final b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

.field protected final c:Lcom/android/settings/connecteddevice/usb/b;

.field d:Landroid/os/Handler;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;Lcom/android/settings/connecteddevice/usb/b;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/a;-><init>(Landroid/content/Context;)V

    .line 43
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/c;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/c;->b:Lcom/android/settings/connecteddevice/usb/UsbDetailsFragment;

    .line 45
    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/c;->c:Lcom/android/settings/connecteddevice/usb/b;

    .line 46
    new-instance p2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/c;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method protected abstract a(ZJII)V
    .annotation build Landroidx/annotation/UiThread;
    .end annotation
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
