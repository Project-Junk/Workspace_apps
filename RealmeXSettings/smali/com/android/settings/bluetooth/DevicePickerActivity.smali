.class public final Lcom/android/settings/bluetooth/DevicePickerActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "DevicePickerActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0d0052

    .line 34
    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/DevicePickerActivity;->setContentView(I)V

    return-void
.end method
