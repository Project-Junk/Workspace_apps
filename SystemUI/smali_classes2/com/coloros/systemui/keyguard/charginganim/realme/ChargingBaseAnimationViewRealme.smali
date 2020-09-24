.class public Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "ChargingBaseAnimationViewRealme.java"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private final mFadeinListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

.field private mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private final mFadeoutListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

.field private mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

.field private final mLoopListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

.field private mMayStartFadeinAnimation:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 105
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 109
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "ChargingBaseAnimationViewRealme"

    .line 35
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 40
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mMayStartFadeinAnimation:Z

    .line 42
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 65
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 86
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$3;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;Z)V
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopFadeinAnimation(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->startLoopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->onFadeoutAnimationEnd()V

    return-void
.end method

.method private onFadeoutAnimationEnd()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "onFadeoutAnimationEnd"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 205
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setVisibility(I)V

    const/4 v0, 0x1

    .line 206
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopAllAnimation(Z)V

    .line 207
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 208
    instance-of v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    if-eqz v0, :cond_0

    .line 209
    check-cast p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingSiphonAnimLayoutRealme;->hideChargingAnimLayout()V

    :cond_0
    return-void
.end method

.method private startFadeinAnimation()V
    .locals 3

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "startFadeinAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getFadeinAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 165
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 166
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 167
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 168
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_0

    .line 170
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->startLoopAnimation()V

    :goto_0
    const/4 v0, 0x0

    .line 172
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mMayStartFadeinAnimation:Z

    return-void
.end method

.method private startFadeoutAnimation()V
    .locals 4

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "startFadeoutAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getFadeoutAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 191
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mFadeoutAnimationDrawable is not null = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Common"

    invoke-static {v3, v1, v2}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 195
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 196
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 197
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_1

    .line 199
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->onFadeoutAnimationEnd()V

    :goto_1
    return-void
.end method

.method private startLoopAnimation()V
    .locals 3

    .line 176
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "startLoopAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getLoopAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v1, :cond_0

    .line 179
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 180
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 182
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_1

    .line 183
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method private stopFadeinAnimation(Z)V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "stopFadeinAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 223
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 224
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 226
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method

.method private stopFadeoutAnimation(Z)V
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "stopFadeoutAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 245
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 246
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 248
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method

.method private stopLoopAnimation(Z)V
    .locals 2

    .line 232
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "stopLoopAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 234
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 235
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 237
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 4

    .line 152
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 153
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAnimation isLoopAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 155
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->startFadeoutAnimation()V

    goto :goto_1

    .line 157
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->onFadeoutAnimationEnd()V

    :goto_1
    return-void
.end method

.method public getFadeinAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFadeoutAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getLoopAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public pauseAnimation(Z)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAnimation, releaseDrawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopAllAnimation(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 119
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 120
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 138
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->setVisibility(I)V

    .line 139
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->mMayStartFadeinAnimation:Z

    if-nez v0, :cond_1

    invoke-static {}, Lcom/coloros/common/feature/RealmeFeatureOption;->isRealme()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->startLoopAnimation()V

    goto :goto_1

    .line 140
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->startFadeinAnimation()V

    :goto_1
    return-void
.end method

.method public stopAllAnimation(Z)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->TAG:Ljava/lang/String;

    const-string v1, "stopAllAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopFadeinAnimation(Z)V

    .line 216
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopLoopAnimation(Z)V

    .line 217
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/realme/ChargingBaseAnimationViewRealme;->stopFadeoutAnimation(Z)V

    return-void
.end method
