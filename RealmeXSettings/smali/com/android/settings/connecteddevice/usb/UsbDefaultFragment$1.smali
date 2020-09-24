.class final Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;
.super Lcom/android/settingslib/widget/g;
.source "UsbDefaultFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;->a()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->c:Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment;

    iput-object p2, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->b:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/g;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/CharSequence;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbDefaultFragment$1;->b:Ljava/lang/String;

    return-object v0
.end method
