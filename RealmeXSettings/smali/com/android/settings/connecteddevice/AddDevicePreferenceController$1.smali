.class final Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;
.super Landroid/content/BroadcastReceiver;
.source "AddDevicePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/AddDevicePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/AddDevicePreferenceController;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->a:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 45
    iget-object p1, p0, Lcom/android/settings/connecteddevice/AddDevicePreferenceController$1;->a:Lcom/android/settings/connecteddevice/AddDevicePreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/connecteddevice/AddDevicePreferenceController;->updateState()V

    return-void
.end method
