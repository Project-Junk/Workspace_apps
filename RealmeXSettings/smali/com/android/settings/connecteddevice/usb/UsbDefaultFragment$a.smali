.class final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbDefaultFragment.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;->a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 3

    .line 150
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 151
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;->a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;->a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-wide v1, v1, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->d:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/b;->b(J)V

    .line 152
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;->a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    invoke-virtual {v0}, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->j_()V

    return-void
.end method

.method public final onTetheringStarted()V
    .locals 3

    .line 143
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$a;->a:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a:Lcom/android/settings/connecteddevice/usb/b;

    const-wide/16 v1, 0x20

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/b;->b(J)V

    return-void
.end method
