.class public Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;
.super Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;
.source "GestureSettingsValueProxy.java"


# static fields
.field public static final ALL_APPS_STATE_ORDINAL:I = 0x5

.field public static final BACKGROUND_APP_STATE_ORDINAL:I = 0x6

.field public static final GESTURE_SLIDE_AREA_BOTTOM:I = 0x65

.field public static final GESTURE_SLIDE_AREA_INVALID:I = 0x64

.field public static final GESTURE_SLIDE_AREA_LEFT:I = 0x67

.field public static final GESTURE_SLIDE_AREA_RIGHT:I = 0x68

.field public static final GESTURE_SLIDE_AREA_TOP:I = 0x66

.field public static final GESTURE_SLIDE_DIRECTION_FROM_DOWN_TO_UP:I = 0x3ea

.field public static final GESTURE_SLIDE_DIRECTION_FROM_LEFT_TO_RIGHT:I = 0x3eb

.field public static final GESTURE_SLIDE_DIRECTION_FROM_RIGHT_TO_LEFT:I = 0x3ec

.field public static final GESTURE_SLIDE_DIRECTION_FROM_UP_TO_DOWN:I = 0x3e9

.field public static final GESTURE_SLIDE_DIRECTION_NONE:I = 0x3e8

.field public static final KEY_LAUNCHER_ALL_APP_VIEW_STATE:Ljava/lang/String; = "launcher_all_app_view_state"

.field public static final KEY_LAUNCHER_FOLDER_STATE:Ljava/lang/String; = "launcher_folder_state"

.field public static final KEY_LAUNCHER_SLID_SLIP_ENABLE:Ljava/lang/String; = "launcher_slid_slip_enable_state"

.field public static final KEY_LAUNCHER_STATE:Ljava/lang/String; = "launcher_state"

.field public static final LAUNCHER_ALL_APP_VIEW_HIDE:I = 0x0

.field public static final LAUNCHER_ALL_APP_VIEW_SHOW:I = 0x1

.field public static final LAUNCHER_FOLDER_CLOSE:I = 0x0

.field public static final LAUNCHER_FOLDER_OPEN:I = 0x1

.field public static final NORMAL_STATE_ORDINAL:I = 0x0

.field public static final OVERVIEW_PEEK_STATE_ORDINAL:I = 0x3

.field public static final OVERVIEW_STATE_ORDINAL:I = 0x2

.field public static final PAGE_PREVIEW_STATE_ORDINAL:I = 0x8

.field public static final QUICK_SWITCH_STATE_ORDINAL:I = 0x4

.field public static final SLID_SLIP_DISABLE:I = 0x1

.field public static final SLID_SLIP_ENABLE:I = 0x0

.field public static final SPRING_LOADED_STATE_ORDINAL:I = 0x1

.field public static final TOGGLE_BAR_STATE_ORDINAL:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/AbsSettingsValueProxy;-><init>()V

    return-void
.end method

.method public static getLauncherAllAppViewState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "launcher_all_app_view_state"

    const/4 v1, 0x0

    .line 102
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static getLauncherFolderState(Landroid/content/Context;)I
    .locals 2

    const-string v0, "launcher_folder_state"

    const/4 v1, 0x0

    .line 80
    invoke-static {p0, v0, v1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static getLauncherSlidSlipEnable(Landroid/content/Context;)I
    .locals 2

    const/4 v0, 0x1

    const-string v1, "launcher_slid_slip_enable_state"

    .line 124
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    :cond_0
    return p0
.end method

.method public static getLauncherState(Landroid/content/Context;)I
    .locals 2

    const/4 v0, -0x1

    const-string v1, "launcher_state"

    .line 135
    invoke-static {p0, v1, v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    packed-switch p0, :pswitch_data_0

    return v0

    :pswitch_0
    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static setLauncherAllAppViewState(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher_all_app_view_state"

    .line 94
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static setLauncherFolderState(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher_folder_state"

    .line 72
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public static setLauncherSlidSlipEnable(Landroid/content/Context;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "launcher_slid_slip_enable_state"

    .line 116
    invoke-static {p0, v0, p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setSecureIntValue(Landroid/content/Context;Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected checkValidity(Landroid/content/Context;)V
    .locals 2

    .line 154
    invoke-static {p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherFolderState(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p0, v1, :cond_0

    .line 155
    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setLauncherFolderState(Landroid/content/Context;I)V

    .line 157
    :cond_0
    invoke-static {p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherAllAppViewState(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_1

    .line 158
    invoke-static {p1, v0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setLauncherAllAppViewState(Landroid/content/Context;I)V

    .line 160
    :cond_1
    invoke-static {p1}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->getLauncherSlidSlipEnable(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v1, :cond_2

    const/4 p0, 0x1

    .line 161
    invoke-static {p1, p0}, Lcom/coloros/systemui/gesture/GestureSettingsValueProxy;->setLauncherSlidSlipEnable(Landroid/content/Context;I)V

    :cond_2
    return-void
.end method
