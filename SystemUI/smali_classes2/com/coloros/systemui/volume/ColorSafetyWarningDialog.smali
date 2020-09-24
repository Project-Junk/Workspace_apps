.class public abstract Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;
.super Lcom/android/systemui/statusbar/phone/SystemUIDialog;
.source "ColorSafetyWarningDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnClickListener;


# static fields
.field private static final KEY_CONFIRM_ALLOWED_AFTER:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "ColorSafetyWarningDialog"


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableOnVolumeUp:Z

.field private mNewVolumeUp:Z

.field private mShowTime:J

.field private mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/AudioManager;)V
    .locals 2

    const v0, 0xc030007

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;-><init>(Landroid/content/Context;I)V

    .line 46
    new-instance v0, Lcom/coloros/systemui/volume/-$$Lambda$ColorSafetyWarningDialog$7x2ZAEcytbNUfiDYli3KhFvFhJg;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/volume/-$$Lambda$ColorSafetyWarningDialog$7x2ZAEcytbNUfiDYli3KhFvFhJg;-><init>(Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;)V

    iput-object v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    .line 54
    iput-object p1, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    const/4 p2, 0x1

    .line 57
    :try_start_0
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_bool_config_safe_media_disable_on_volume_up:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mDisableOnVolumeUp:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 60
    :catch_0
    iput-boolean p2, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mDisableOnVolumeUp:Z

    .line 62
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7da

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 63
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setShowForAllUsers(Z)V

    const p2, 0x7f110738

    .line 65
    invoke-virtual {p0, p2}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setTitle(I)V

    const p2, 0x7f110737

    .line 66
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setMessage(Ljava/lang/CharSequence;)V

    const/4 p2, -0x3

    const v0, 0x7f11090f

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0, p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p2, -0x2

    const v0, 0x7f110574

    .line 68
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {p0, p2, p1, v0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 69
    invoke-virtual {p0, p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 70
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object p1

    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, p0}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->addListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    return-void
.end method


# virtual methods
.method protected abstract cleanUp()V
.end method

.method public synthetic lambda$new$0$ColorSafetyWarningDialog(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    const-string p1, "Volume"

    const-string p2, "ColorSafetyWarningDialog"

    const-string v0, "Received ACTION_CLOSE_SYSTEM_DIALOGS"

    .line 47
    invoke-static {p1, p2, v0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->cancel()V

    .line 49
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->cleanUp()V

    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 108
    invoke-static {}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->getInstance()Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;

    move-result-object p1

    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mSystemDialogListener:Lcom/coloros/systemui/common/receiver/IReceiverListener;

    invoke-virtual {p1, v0}, Lcom/coloros/systemui/common/receiver/SystemDialogReceiver;->removeListener(Lcom/coloros/systemui/common/receiver/IReceiverListener;)V

    .line 109
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->cleanUp()V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .line 77
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mDisableOnVolumeUp:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 78
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mNewVolumeUp:Z

    .line 81
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/16 v0, 0x18

    if-ne p1, v0, :cond_0

    .line 86
    iget-boolean v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mNewVolumeUp:Z

    if-eqz v0, :cond_0

    .line 87
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mShowTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const-string v0, "Volume"

    const-string v1, "ColorSafetyWarningDialog"

    const-string v2, "Confirmed warning via VOLUME_UP"

    .line 88
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->disableSafeMediaVolume()V

    .line 90
    invoke-virtual {p0}, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->dismiss()V

    .line 92
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method protected onStart()V
    .locals 2

    .line 102
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->onStart()V

    .line 103
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coloros/systemui/volume/ColorSafetyWarningDialog;->mShowTime:J

    return-void
.end method
