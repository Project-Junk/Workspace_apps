.class public final synthetic Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$HQR7dZu63YSZo4fl1N9Fz0M9VeU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/settings/connecteddevice/usb/UsbConnectionBroadcastReceiver$a;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/connecteddevice/usb/a;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/connecteddevice/usb/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$HQR7dZu63YSZo4fl1N9Fz0M9VeU;->f$0:Lcom/android/settings/connecteddevice/usb/a;

    return-void
.end method


# virtual methods
.method public final onUsbConnectionChanged(ZJII)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/-$$Lambda$a$HQR7dZu63YSZo4fl1N9Fz0M9VeU;->f$0:Lcom/android/settings/connecteddevice/usb/a;

    move v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/android/settings/connecteddevice/usb/a;->lambda$HQR7dZu63YSZo4fl1N9Fz0M9VeU(Lcom/android/settings/connecteddevice/usb/a;ZJII)V

    return-void
.end method
