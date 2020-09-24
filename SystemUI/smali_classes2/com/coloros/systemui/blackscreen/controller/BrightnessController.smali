.class public Lcom/coloros/systemui/blackscreen/controller/BrightnessController;
.super Ljava/lang/Object;
.source "BrightnessController.java"

# interfaces
.implements Lcom/coloros/systemui/blackscreen/controller/IBrightness;


# static fields
.field private static final BRIGHTNESS_DARK:I = 0x5

.field private static final DELAY_LOWER_BRIGHTNESS:J = 0xbb8L

.field private static final TAG:Ljava/lang/String; = "BrightnessController"


# instance fields
.field private mCallState:I

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mListener:Landroid/telephony/PhoneStateListener;

.field private final mLowerBrightness:Ljava/lang/Runnable;

.field private mTargetBrightness:I

.field private final mTm:Landroid/telephony/TelephonyManager;

.field private mUserBrightness:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mCallState:I

    .line 37
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    .line 38
    new-instance v0, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BrightnessController$MCfqwSl8jJfuX6Fq87k4bg-x_i8;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/-$$Lambda$BrightnessController$MCfqwSl8jJfuX6Fq87k4bg-x_i8;-><init>(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    .line 39
    new-instance v0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/blackscreen/controller/BrightnessController$1;-><init>(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;)V

    iput-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mListener:Landroid/telephony/PhoneStateListener;

    .line 63
    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTm:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;)I
    .locals 0

    .line 28
    iget p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mCallState:I

    return p0
.end method

.method static synthetic access$002(Lcom/coloros/systemui/blackscreen/controller/BrightnessController;I)I
    .locals 0

    .line 28
    iput p1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mCallState:I

    return p1
.end method


# virtual methods
.method public synthetic lambda$new$0$BrightnessController()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTargetBrightness:I

    invoke-static {v0, p0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    return-void
.end method

.method public onDark()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    const-string v2, "onDark()"

    .line 97
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTargetBrightness:I

    invoke-static {v0, p0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    return-void
.end method

.method public onDestroy()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    const-string v2, "onDestroy()"

    .line 78
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 82
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mUserBrightness:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    .line 83
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTm:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mListener:Landroid/telephony/PhoneStateListener;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onInit()V
    .locals 4

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    const-string v2, "onInit()"

    .line 69
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->getBrightness(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mUserBrightness:I

    .line 71
    iget v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mUserBrightness:I

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTargetBrightness:I

    .line 72
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mTm:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method public onLight()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    const-string v2, "onLight()"

    .line 88
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 92
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mUserBrightness:I

    invoke-static {v0, p0}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    return-void
.end method

.method public onLightBriefly()V
    .locals 3

    const-string v0, "Statusbar"

    const-string v1, "BrightnessController"

    const-string v2, "onLightBriefly()"

    .line 103
    invoke-static {v0, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 107
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mUserBrightness:I

    invoke-static {v0, v1}, Lcom/coloros/systemui/qs/util/QsSettingsValueProxy;->setBrightness(Landroid/content/Context;I)V

    .line 108
    iget-object v0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/coloros/systemui/blackscreen/controller/BrightnessController;->mLowerBrightness:Ljava/lang/Runnable;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
