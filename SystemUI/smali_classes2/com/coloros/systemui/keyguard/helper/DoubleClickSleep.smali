.class public Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;
.super Ljava/lang/Object;
.source "DoubleClickSleep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;
    }
.end annotation


# static fields
.field private static final DOUBLE_TOUCH:Ljava/lang/String; = "double_touch"

.field private static final GESTURE_DOUBLE_TOUCH:Ljava/lang/String; = "oppo_gesture_double_touch"

.field private static final GESTURE_OPEN:Ljava/lang/String; = "oppo_gesture_open_type"

.field private static final OPEN_TYPE:Ljava/lang/String; = "open_type"

.field private static final SWITCH_STATE_CLOSED:I = 0x0

.field private static final SWITCH_STATE_OPEN:I = 0x1

.field public static final TAG:Ljava/lang/String; = "DoubleClickSleep"


# instance fields
.field private mCR:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mSupportDoubleClick:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSupportDoubleClick:Z

    .line 77
    new-instance v0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$1;-><init>(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 51
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mPowerManager:Landroid/os/PowerManager;

    .line 53
    new-instance p1, Landroid/view/GestureDetector;

    iget-object p2, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;

    invoke-direct {v0, p0, p2}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep$OnDoubleClickListener;-><init>(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Landroid/content/Context;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mGestureDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSupportDoubleClick:Z

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSupportDoubleClick:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Z
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->isDoubleClickSleepEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;)Landroid/os/PowerManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mPowerManager:Landroid/os/PowerManager;

    return-object p0
.end method

.method private getUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 0

    if-eqz p2, :cond_0

    .line 70
    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    goto :goto_0

    .line 72
    :cond_0
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private isDoubleClickSleepEnabled()Z
    .locals 1

    .line 114
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->isGestureSwitchOn()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 117
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->isDoubleClickSwitchOn()Z

    move-result p0

    return p0
.end method

.method private isDoubleClickSwitchOn()Z
    .locals 4

    const-string v0, "DoubleClickSleep"

    const/4 v1, 0x0

    .line 140
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_gesture_double_touch"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "isDoubleClickSwitchOn SettingNotFoundException oppo_gesture_double_touch not Found, try get double_touch"

    .line 142
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    :try_start_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "double_touch"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 146
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGestureSwitchOn SettingNotFoundException return double_touch = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    .line 149
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDoubleClickSwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method

.method private isGestureSwitchOn()Z
    .locals 4

    const-string v0, "DoubleClickSleep"

    const/4 v1, 0x0

    .line 124
    :try_start_0
    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oppo_gesture_open_type"

    invoke-static {v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v2, "isGestureSwitchOn SettingNotFoundException oppo_gesture_open_type not Found,and try get open_type"

    .line 126
    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    :try_start_1
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v2, "open_type"

    invoke-static {p0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 130
    :catch_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isGestureSwitchOn SettingNotFoundException return open_type = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->wraning(Ljava/lang/String;Ljava/lang/String;)V

    move p0, v1

    .line 133
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isGestureSwitchOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_1

    :cond_0
    move v0, v1

    :goto_1
    return v0
.end method


# virtual methods
.method public adjustDoubleClickEnabled()V
    .locals 5

    .line 57
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->isDoubleClickSleepEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSupportDoubleClick:Z

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustDoubleClickEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSupportDoubleClick:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DoubleClickSleep"

    invoke-static {v1, v0}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    .line 61
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    const/4 v1, 0x1

    const-string v2, "oppo_gesture_open_type"

    invoke-direct {p0, v2, v1}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 62
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    const-string v2, "open_type"

    invoke-direct {p0, v2, v4}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 63
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    const-string v2, "oppo_gesture_double_touch"

    invoke-direct {p0, v2, v1}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 64
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    const-string v1, "double_touch"

    invoke-direct {p0, v1, v4}, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->getUri(Ljava/lang/String;Z)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public destroy()V
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mCR:Landroid/content/ContentResolver;

    if-eqz v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/helper/DoubleClickSleep;->mGestureDetector:Landroid/view/GestureDetector;

    if-eqz p0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    :cond_0
    return-void
.end method
