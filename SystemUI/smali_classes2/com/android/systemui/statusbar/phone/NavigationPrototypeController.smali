.class public Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;
.super Landroid/database/ContentObserver;
.source "NavigationPrototypeController.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;,
        Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$GestureAction;
    }
.end annotation


# static fields
.field static final ACTION_ASSISTANT:I = 0x6

.field static final ACTION_BACK:I = 0x3

.field static final ACTION_DEFAULT:I = 0x0

.field static final ACTION_NOTHING:I = 0x5

.field static final ACTION_QUICKSCRUB:I = 0x2

.field static final ACTION_QUICKSTEP:I = 0x1

.field static final ACTION_QUICKSWITCH:I = 0x4

.field public static final EDGE_SENSITIVITY_WIDTH_SETTING:Ljava/lang/String; = "quickstepcontroller_edge_width_sensitivity"

.field public static final ENABLE_ASSISTANT_GESTURE:Ljava/lang/String; = "ENABLE_ASSISTANT_GESTURE"

.field private static final HIDE_BACK_BUTTON_SETTING:Ljava/lang/String; = "quickstepcontroller_hideback"

.field private static final HIDE_HOME_BUTTON_SETTING:Ljava/lang/String; = "quickstepcontroller_hidehome"

.field public static final NAV_COLOR_ADAPT_ENABLE_SETTING:Ljava/lang/String; = "navbar_color_adapt_enable"

.field private static final PROTOTYPE_ENABLED:Ljava/lang/String; = "prototype_enabled"

.field public static final SHOW_HOME_HANDLE_SETTING:Ljava/lang/String; = "quickstepcontroller_showhandle"


# instance fields
.field private final GESTURE_MATCH_SETTING:Ljava/lang/String;

.field private mActionMap:[I

.field private final mContext:Landroid/content/Context;

.field private mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "quickstepcontroller_gesture_match_map"

    .line 50
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->GESTURE_MATCH_SETTING:Ljava/lang/String;

    const/4 v0, 0x6

    .line 73
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    .line 80
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->updateSwipeLTRBackSetting()V

    return-void
.end method

.method private static convertDpToPixel(F)I
    .locals 1

    .line 208
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getGlobalBool(Ljava/lang/String;Z)Z
    .locals 0

    .line 195
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private getGlobalInt(Ljava/lang/String;I)I
    .locals 0

    .line 199
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private registerObserver(Ljava/lang/String;)V
    .locals 2

    .line 203
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 204
    invoke-static {p1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private updateSwipeLTRBackSetting()V
    .locals 4

    .line 185
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quickstepcontroller_gesture_match_map"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 188
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 189
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->getNumericValue(C)I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getEdgeSensitivityHeight()I
    .locals 1

    .line 146
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 147
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 148
    iget p0, v0, Landroid/graphics/Point;->y:I

    return p0
.end method

.method public getEdgeSensitivityWidth()I
    .locals 1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/coloros/common/util/ResourceUtil;->android_dimen_config_backGestureInset:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method getGestureActionMap()[I
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    return-object p0
.end method

.method hideHomeButton()Z
    .locals 2

    const-string v0, "quickstepcontroller_hidehome"

    const/4 v1, 0x0

    .line 167
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method isAssistantGestureEnabled()Z
    .locals 2

    const-string v0, "ENABLE_ASSISTANT_GESTURE"

    const/4 v1, 0x0

    .line 175
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isEnabled()Z
    .locals 2

    const-string v0, "prototype_enabled"

    const/4 v1, 0x0

    .line 152
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .line 110
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    if-nez p1, :cond_5

    .line 111
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    if-eqz p1, :cond_5

    .line 112
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string p2, "quickstepcontroller_gesture_match_map"

    .line 113
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 116
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->updateSwipeLTRBackSetting()V

    .line 117
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mActionMap:[I

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onGestureRemap([I)V

    goto :goto_0

    :cond_0
    const-string p2, "quickstepcontroller_hideback"

    .line 118
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 119
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    const/4 v0, 0x0

    .line 120
    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    .line 119
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onBackButtonVisibilityChanged(Z)V

    goto :goto_0

    :cond_1
    const-string p2, "quickstepcontroller_hidehome"

    .line 121
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->hideHomeButton()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onHomeButtonVisibilityChanged(Z)V

    goto :goto_0

    :cond_2
    const-string p2, "navbar_color_adapt_enable"

    .line 123
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 124
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    const/4 p2, 0x2

    .line 125
    invoke-static {p0, p2}, Lcom/android/systemui/statusbar/phone/NavBarTintController;->isEnabled(Landroid/content/Context;I)Z

    move-result p0

    .line 124
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onColorAdaptChanged(Z)V

    goto :goto_0

    :cond_3
    const-string p2, "quickstepcontroller_showhandle"

    .line 126
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 127
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->showHomeHandle()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onHomeHandleVisiblilityChanged(Z)V

    goto :goto_0

    :cond_4
    const-string p2, "ENABLE_ASSISTANT_GESTURE"

    .line 128
    invoke-virtual {p1, p2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->isAssistantGestureEnabled()Z

    move-result p0

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onAssistantGestureEnabled(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 213
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    if-eqz p1, :cond_0

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getEdgeSensitivityWidth()I

    move-result v0

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getEdgeSensitivityHeight()I

    move-result p0

    .line 214
    invoke-interface {p1, v0, p0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;->onEdgeSensitivityChanged(II)V

    :cond_0
    return-void
.end method

.method public onLowMemory()V
    .locals 0

    return-void
.end method

.method public register()V
    .locals 1

    const-string v0, "quickstepcontroller_hideback"

    .line 91
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    const-string v0, "quickstepcontroller_hidehome"

    .line 92
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    const-string v0, "quickstepcontroller_gesture_match_map"

    .line 93
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    const-string v0, "navbar_color_adapt_enable"

    .line 94
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    const-string v0, "quickstepcontroller_showhandle"

    .line 95
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    const-string v0, "ENABLE_ASSISTANT_GESTURE"

    .line 96
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->registerObserver(Ljava/lang/String;)V

    .line 97
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method

.method public setOnPrototypeChangedListener(Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mListener:Lcom/android/systemui/statusbar/phone/NavigationPrototypeController$OnPrototypeChangedListener;

    return-void
.end method

.method showHomeHandle()Z
    .locals 2

    const-string v0, "quickstepcontroller_showhandle"

    const/4 v1, 0x0

    .line 171
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->getGlobalBool(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public unregister()V
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationPrototypeController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    return-void
.end method
