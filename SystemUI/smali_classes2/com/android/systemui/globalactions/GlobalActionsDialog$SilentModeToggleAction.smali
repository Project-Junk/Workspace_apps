.class Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;
.super Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;
.source "GlobalActionsDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/globalactions/GlobalActionsDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SilentModeToggleAction"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;


# direct methods
.method public constructor <init>(Lcom/android/systemui/globalactions/GlobalActionsDialog;)V
    .locals 6

    .line 1308
    iput-object p1, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    .line 1309
    sget v1, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_audio_vol_mute:I

    sget v2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_audio_vol:I

    sget v3, Lcom/coloros/common/util/ResourceUtil;->android_string_global_action_toggle_silent_mode:I

    sget v4, Lcom/coloros/common/util/ResourceUtil;->android_string_global_action_silent_mode_on_status:I

    sget v5, Lcom/coloros/common/util/ResourceUtil;->android_string_global_action_silent_mode_off_status:I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/globalactions/GlobalActionsDialog$ToggleAction;-><init>(IIIII)V

    return-void
.end method


# virtual methods
.method onToggle(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1318
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_0

    .line 1320
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/globalactions/GlobalActionsDialog$SilentModeToggleAction;->this$0:Lcom/android/systemui/globalactions/GlobalActionsDialog;

    invoke-static {p0}, Lcom/android/systemui/globalactions/GlobalActionsDialog;->access$2300(Lcom/android/systemui/globalactions/GlobalActionsDialog;)Landroid/media/AudioManager;

    move-result-object p0

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerMode(I)V

    :goto_0
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public showDuringKeyguard()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
