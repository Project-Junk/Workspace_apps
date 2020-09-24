.class public Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;
.super Ljava/lang/Object;
.source "SingleHandGesture.java"


# static fields
.field private static DEBUG:Z = false

.field private static final ENTER_ONEHAND_LEFT:I = 0x1

.field private static final ENTER_ONEHAND_RIGHT:I = 0x2

.field public static final KEY_SINGLEHAND_ENABLE_SETTING:Ljava/lang/String; = "singlehand_enable_switch_app_key"

.field public static final SINGLEHAND_QUICK_ENTRY_DEF:I = 0x0

.field public static final SINGLEHAND_QUICK_ENTRY_OFF:I = 0x0

.field public static final SINGLEHAND_QUICK_ENTRY_ON:I = 0x1

.field private static final SWIPP_DRAG_LAST_MARGIN:I = 0x5a

.field private static final SWIPP_DRAG_MOVE:I = 0x23

.field private static final SWIPP_SPEED_THRESHOLD:I = 0x64

.field private static final TAG:Ljava/lang/String; = "SingleModeGuestion"

.field private static final WORKAREA_HEIGHT:I = 0xdc


# instance fields
.field private mConn:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mDownX:F

.field private mDownY:F

.field private mEnableShowHintWindow:Z

.field private mHintView:Landroid/view/View;

.field private mIsBind:Z

.field private mIsBreenoShow:Z

.field private mIsLockScreen:Z

.field private mIsSettingEnable:Z

.field private mIsSmallScreenMode:Z

.field private mIsValidTouchEvent:Z

.field private mIsindowhasAdd:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mRotation:I

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mService:Lcom/coloros/exserviceui/IDragControl;

.field private mSingleHandSwitchStateObserver:Landroid/database/ContentObserver;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 44
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSmallScreenMode:Z

    .line 46
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsValidTouchEvent:Z

    .line 49
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBind:Z

    .line 50
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsLockScreen:Z

    .line 56
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsindowhasAdd:Z

    .line 59
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mEnableShowHintWindow:Z

    .line 62
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBreenoShow:Z

    .line 64
    new-instance v1, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$1;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mSingleHandSwitchStateObserver:Landroid/database/ContentObserver;

    .line 242
    new-instance v1, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture$2;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)V

    iput-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mConn:Landroid/content/ServiceConnection;

    .line 74
    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    .line 75
    invoke-static {}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getInstance()Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/coloros/systemui/common/manager/ColorOSSystemUiManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mMainHandler:Landroid/os/Handler;

    .line 76
    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result p1

    const/4 v1, 0x1

    const-string v2, "singlehand_enable_switch_app_key"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    .line 78
    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mSingleHandSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$002(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Z)Z
    .locals 0

    .line 32
    iput-boolean p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)Landroid/content/Context;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;Lcom/coloros/exserviceui/IDragControl;)Lcom/coloros/exserviceui/IDragControl;
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mService:Lcom/coloros/exserviceui/IDragControl;

    return-object p1
.end method

.method private bindDragWindowService()V
    .locals 5

    .line 218
    new-instance v0, Landroid/content/Intent;

    const-string v1, "action.Drag.OppoDragWindowService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 219
    iget-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    .line 220
    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    goto :goto_0

    .line 225
    :cond_0
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 226
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 227
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 228
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, v2, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 229
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 231
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBind:Z

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 222
    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mService:Lcom/coloros/exserviceui/IDragControl;

    return-void
.end method

.method private createAndAddWindow()V
    .locals 3

    .line 264
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsindowhasAdd:Z

    if-eqz v0, :cond_0

    return-void

    .line 267
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mHintView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 268
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mHintView:Landroid/view/View;

    .line 269
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mHintView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_2

    .line 272
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    const-string v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mWindowManager:Landroid/view/WindowManager;

    .line 274
    :cond_2
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mHintView:Landroid/view/View;

    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->getmHintViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const/4 v0, 0x1

    .line 275
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsindowhasAdd:Z

    return-void
.end method

.method private getmHintViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 3

    .line 279
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x7eb

    .line 280
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    .line 281
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const v1, 0x1800718

    .line 282
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/16 v1, 0x30

    .line 290
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/16 v1, 0xdc

    .line 291
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/4 v2, 0x0

    .line 292
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 293
    iget p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenHeight:I

    sub-int/2addr p0, v1

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const-string p0, "SingleHand"

    .line 294
    invoke-virtual {v0, p0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 p0, -0x1

    .line 295
    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    return-object v0
.end method

.method private isEnable()Z
    .locals 4

    .line 116
    invoke-static {}, Landroid/view/OppoScreenDragUtil;->getScreenDragState()I

    move-result v0

    sget v1, Landroid/view/OppoScreenDragUtil;->DRAG_STATE_OFFSET:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSmallScreenMode:Z

    .line 117
    iget v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mRotation:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSmallScreenMode:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsLockScreen:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    .line 120
    :goto_1
    iget-boolean v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBind:Z

    if-nez v1, :cond_2

    .line 121
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->bindDragWindowService()V

    const-string v1, "bindDragWindowService"

    .line 122
    invoke-direct {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 123
    :cond_2
    iget-boolean v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBind:Z

    if-eqz v1, :cond_3

    .line 124
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->unbindDragWindowService()V

    const-string v1, "unbindDragWindowService"

    .line 125
    invoke-direct {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    :cond_3
    :goto_2
    if-eqz v0, :cond_4

    .line 127
    iget-boolean p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    if-eqz p0, :cond_4

    goto :goto_3

    :cond_4
    move v2, v3

    :goto_3
    return v2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 87
    sget-boolean p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->DEBUG:Z

    if-eqz p0, :cond_0

    .line 88
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ": "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "SystemUi--"

    const-string v0, "SingleModeGuestion"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private removeWindow()V
    .locals 1

    .line 255
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsindowhasAdd:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 259
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsindowhasAdd:Z

    .line 260
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mHintView:Landroid/view/View;

    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method private unbindDragWindowService()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mService:Lcom/coloros/exserviceui/IDragControl;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mConn:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBind:Z

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mService:Lcom/coloros/exserviceui/IDragControl;

    :cond_0
    return-void
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;Z)V
    .locals 6

    .line 165
    iput-boolean p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsLockScreen:Z

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    .line 167
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsSettingEnable:Z

    if-nez v0, :cond_0

    return-void

    .line 171
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsValidTouchEvent:Z

    if-nez v0, :cond_2

    if-nez p2, :cond_1

    .line 173
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->isInWorkArea(Landroid/view/MotionEvent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 174
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->isEnable()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 176
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p2

    iput p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mDownX:F

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mDownY:F

    .line 178
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/4 p1, 0x1

    .line 179
    iput-boolean p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsValidTouchEvent:Z

    goto/16 :goto_0

    .line 181
    :cond_1
    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$XOiSPNcFOtVJpKeW-VjTjC6XP0w;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$XOiSPNcFOtVJpKeW-VjTjC6XP0w;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 184
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    const/4 v0, 0x2

    if-ne p2, v0, :cond_4

    .line 186
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->isInWorkArea(Landroid/view/MotionEvent;)Z

    move-result p2

    if-nez p2, :cond_3

    .line 187
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->cleanEvents()V

    goto/16 :goto_0

    .line 189
    :cond_3
    iget-object p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p2, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 190
    iget-boolean p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mEnableShowHintWindow:Z

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mDownY:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_7

    .line 191
    iget-object p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mMainHandler:Landroid/os/Handler;

    new-instance p2, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$mRcCq-pBfCe3eWTf1kHetG53KEA;

    invoke-direct {p2, p0}, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$mRcCq-pBfCe3eWTf1kHetG53KEA;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_4
    if-nez p2, :cond_5

    .line 195
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->cleanEvents()V

    goto :goto_0

    .line 197
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    .line 198
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 199
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 200
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    .line 205
    iget v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mDownY:F

    const/high16 v2, 0x420c0000    # 35.0f

    add-float/2addr v1, v2

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_6

    iget v1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenHeight:I

    add-int/lit8 v1, v1, -0x5a

    int-to-float v1, v1

    cmpl-float p2, p2, v1

    if-lez p2, :cond_6

    const/high16 p2, 0x42c80000    # 100.0f

    cmpl-float p2, v0, p2

    if-lez p2, :cond_6

    iget p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mDownX:F

    sub-float p2, p1, p2

    .line 208
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double v0, p2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    iget p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenWidth:I

    int-to-double v4, p2

    mul-double/2addr v4, v2

    cmpg-double p2, v0, v4

    if-gez p2, :cond_6

    .line 210
    iget-object p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;

    invoke-direct {v0, p0, p1}, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$Qg6LyH2PW_3LQwrXIwSsnFZ_aEg;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;F)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 212
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->cleanEvents()V

    :cond_7
    :goto_0
    return-void
.end method

.method public cleanEvents()V
    .locals 2

    .line 159
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    const/4 v0, 0x0

    .line 160
    iput-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsValidTouchEvent:Z

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$ELlchCPfxkCl3gLERWh5lX7xqUk;

    invoke-direct {v1, p0}, Lcom/coloros/systemui/common/settingsvalue/-$$Lambda$SingleHandGesture$ELlchCPfxkCl3gLERWh5lX7xqUk;-><init>(Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enableShowHintWindow(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mEnableShowHintWindow:Z

    return-void
.end method

.method public enterDragWindow(Z)V
    .locals 2

    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enterDragWindow:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v1, "right"

    goto :goto_0

    :cond_0
    const-string v1, "left"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    .line 142
    iget-boolean v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBreenoShow:Z

    if-eqz v0, :cond_1

    return-void

    .line 146
    :cond_1
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mService:Lcom/coloros/exserviceui/IDragControl;

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_1

    :cond_2
    const/4 p1, 0x1

    .line 148
    :goto_1
    :try_start_0
    invoke-interface {v0, p1}, Lcom/coloros/exserviceui/IDragControl;->startDragWindowOffSet(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    const-string v0, "enterDragWindow error"

    .line 150
    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2

    :cond_3
    const-string p1, "mService == null"

    .line 154
    invoke-direct {p0, p1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    :goto_2
    return-void
.end method

.method public isInWorkArea(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    .line 133
    iget p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenHeight:I

    add-int/lit16 p0, p0, -0xdc

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public synthetic lambda$addPointerEvent$1$SingleHandGesture()V
    .locals 0

    .line 181
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->removeWindow()V

    return-void
.end method

.method public synthetic lambda$addPointerEvent$2$SingleHandGesture()V
    .locals 0

    .line 191
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->createAndAddWindow()V

    return-void
.end method

.method public synthetic lambda$addPointerEvent$3$SingleHandGesture(F)V
    .locals 2

    .line 210
    iget v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenWidth:I

    const/4 v1, 0x1

    shr-int/2addr v0, v1

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->enterDragWindow(Z)V

    return-void
.end method

.method public synthetic lambda$cleanEvents$0$SingleHandGesture()V
    .locals 0

    .line 161
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->removeWindow()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mSingleHandSwitchStateObserver:Landroid/database/ContentObserver;

    if-eqz v0, :cond_0

    .line 301
    iget-object v0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mSingleHandSwitchStateObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method

.method public setBreenoStatus(Z)V
    .locals 0

    .line 96
    iput-boolean p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mIsBreenoShow:Z

    return-void
.end method

.method public setScreenSize(III)V
    .locals 2

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenSize height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",width:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->log(Ljava/lang/String;)V

    .line 102
    iput p1, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenWidth:I

    .line 103
    iput p2, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mScreenHeight:I

    .line 104
    iput p3, p0, Lcom/coloros/systemui/common/settingsvalue/SingleHandGesture;->mRotation:I

    return-void
.end method
