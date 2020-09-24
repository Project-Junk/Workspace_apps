.class final Lcom/android/settings/connecteddevice/usb/e$a;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "UsbDetailsFunctionsController.java"


# annotations
.annotation build Landroidx/annotation/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/connecteddevice/usb/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/connecteddevice/usb/e;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/e;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/e$a;->a:Lcom/android/settings/connecteddevice/usb/e;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTetheringFailed()V
    .locals 3

    .line 153
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 154
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/e$a;->a:Lcom/android/settings/connecteddevice/usb/e;

    iget-object v0, v0, Lcom/android/settings/connecteddevice/usb/e;->c:Lcom/android/settings/connecteddevice/usb/b;

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/e$a;->a:Lcom/android/settings/connecteddevice/usb/e;

    iget-wide v1, v1, Lcom/android/settings/connecteddevice/usb/e;->g:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/connecteddevice/usb/b;->a(J)V

    return-void
.end method
