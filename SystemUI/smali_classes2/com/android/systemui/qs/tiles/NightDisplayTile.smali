.class public Lcom/android/systemui/qs/tiles/NightDisplayTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "NightDisplayTile.java"

# interfaces
.implements Landroid/hardware/display/NightDisplayListener$Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/qs/tileimpl/QSTileImpl<",
        "Lcom/android/systemui/plugins/qs/QSTile$BooleanState;",
        ">;",
        "Landroid/hardware/display/NightDisplayListener$Callback;"
    }
.end annotation


# static fields
.field private static final PATTERN_HOUR:Ljava/lang/String; = "h a"

.field private static final PATTERN_HOUR_MINUTE:Ljava/lang/String; = "h:mm a"

.field private static final PATTERN_HOUR_NINUTE_24:Ljava/lang/String; = "HH:mm"


# instance fields
.field private mIsListening:Z

.field private mListener:Landroid/hardware/display/NightDisplayListener;

.field private final mManager:Landroid/hardware/display/ColorDisplayManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;)V
    .locals 3
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 69
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const-class v0, Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/ColorDisplayManager;

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 71
    new-instance p1, Landroid/hardware/display/NightDisplayListener;

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, v0, v1}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    return-void
.end method

.method private getSecondaryLabel(Z)Ljava/lang/String;
    .locals 6

    .line 134
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_1

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const p1, 0x7f1106f4

    .line 139
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const p1, 0x7f1106f3

    .line 141
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_2
    if-eqz p1, :cond_3

    .line 151
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomEndTime()Ljava/time/LocalTime;

    move-result-object p1

    const v0, 0x7f1106ff

    goto :goto_1

    .line 154
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayCustomStartTime()Ljava/time/LocalTime;

    move-result-object p1

    const v0, 0x7f1106f2

    .line 160
    :goto_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 161
    iget-object v3, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v3

    const-string v4, "UTC"

    .line 162
    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 163
    invoke-virtual {v3}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    const/16 v4, 0xb

    .line 164
    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v5

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    const/16 v4, 0xc

    .line 165
    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result p1

    invoke-virtual {v2, v4, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xd

    const/4 v4, 0x0

    .line 166
    invoke-virtual {v2, p1, v4}, Ljava/util/Calendar;->set(II)V

    const/16 p1, 0xe

    .line 167
    invoke-virtual {v2, p1, v4}, Ljava/util/Calendar;->set(II)V

    .line 168
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    new-array p1, v1, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p1, v4

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 189
    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.settings.NIGHT_DISPLAY_SETTINGS"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x1eb

    return p0
.end method

.method public getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 205
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106f1

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected handleClick()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_forced_auto_mode_available"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 89
    invoke-virtual {v0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoModeRaw()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayAutoMode(I)Z

    const-string v0, "NightDisplayTile"

    const-string v2, "Enrolled in forced night display auto mode"

    .line 91
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    xor-int/2addr v0, v1

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p0, v0}, Landroid/hardware/display/ColorDisplayManager;->setNightDisplayActivated(Z)Z

    return-void
.end method

.method protected handleSetListening(Z)V
    .locals 0

    .line 194
    iput-boolean p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz p1, :cond_0

    .line 196
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {p1, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 197
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    :goto_0
    return-void
.end method

.method protected handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V
    .locals 3

    .line 117
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    invoke-virtual {p2}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayActivated()Z

    move-result p2

    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 118
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    const v0, 0x7f1106f1

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    .line 119
    sget p2, Lcom/coloros/common/util/ResourceUtil;->android_drawable_ic_qs_night_display_on:I

    invoke-static {p2}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 120
    const-class p2, Landroid/widget/Switch;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 121
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iput p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->state:I

    .line 122
    iget-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->getSecondaryLabel(Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    .line 123
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_1
    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/CharSequence;

    const/4 p2, 0x0

    iget-object v2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->label:Ljava/lang/CharSequence;

    aput-object v2, p0, p2

    const-string p2, ", "

    aput-object p2, p0, v1

    iget-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->secondaryLabel:Ljava/lang/CharSequence;

    aput-object p2, p0, v0

    .line 125
    invoke-static {p0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->contentDescription:Ljava/lang/CharSequence;

    return-void
.end method

.method protected bridge synthetic handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 0

    .line 52
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$BooleanState;Ljava/lang/Object;)V

    return-void
.end method

.method protected handleUserSwitch(I)V
    .locals 4

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 107
    :cond_0
    new-instance v0, Landroid/hardware/display/NightDisplayListener;

    iget-object v1, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, p1, v2}, Landroid/hardware/display/NightDisplayListener;-><init>(Landroid/content/Context;ILandroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    .line 108
    iget-boolean v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mIsListening:Z

    if-eqz v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mListener:Landroid/hardware/display/NightDisplayListener;

    invoke-virtual {v0, p0}, Landroid/hardware/display/NightDisplayListener;->setCallback(Landroid/hardware/display/NightDisplayListener$Callback;)V

    .line 112
    :cond_1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleUserSwitch(I)V

    return-void
.end method

.method public isAvailable()Z
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/hardware/display/ColorDisplayManager;->isNightDisplayAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;
    .locals 0

    .line 81
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    return-object p0
.end method

.method public bridge synthetic newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->newTileState()Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    move-result-object p0

    return-object p0
.end method

.method public onActivated(Z)V
    .locals 0

    .line 210
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/NightDisplayTile;->refreshState()V

    return-void
.end method

.method public populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;
    .locals 1

    .line 183
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->populate(Landroid/metrics/LogMaker;)Landroid/metrics/LogMaker;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/NightDisplayTile;->mManager:Landroid/hardware/display/ColorDisplayManager;

    .line 184
    invoke-virtual {p0}, Landroid/hardware/display/ColorDisplayManager;->getNightDisplayAutoModeRaw()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/16 v0, 0x51f

    invoke-virtual {p1, v0, p0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p0

    return-object p0
.end method
