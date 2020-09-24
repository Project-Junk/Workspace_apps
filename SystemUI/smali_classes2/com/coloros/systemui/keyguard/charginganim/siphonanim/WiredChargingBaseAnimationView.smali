.class public Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "WiredChargingBaseAnimationView.java"


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

    .line 100
    invoke-direct {p0, p1, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 104
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "WiredChargingBaseAnimationView"

    .line 30
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const/4 p1, 0x1

    .line 35
    iput-boolean p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mMayStartFadeinAnimation:Z

    .line 37
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$1;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 60
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$2;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$2;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    .line 81
    new-instance p1, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$3;

    invoke-direct {p1, p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView$3;-><init>(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;Z)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopFadeinAnimation(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->startLoopAnimation()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->onFadeoutAnimationEnd()V

    return-void
.end method

.method private onFadeoutAnimationEnd()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "onFadeoutAnimationEnd"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    .line 198
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setVisibility(I)V

    const/4 v0, 0x1

    .line 199
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopAllAnimation(Z)V

    .line 200
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 201
    instance-of v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    if-eqz v0, :cond_0

    .line 202
    check-cast p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingSiphonAnimLayout;->hideChargingAnimLayout()V

    :cond_0
    return-void
.end method

.method private startFadeinAnimation()V
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "startFadeinAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getFadeinAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 160
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 161
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 162
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 163
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_0

    .line 165
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->startLoopAnimation()V

    :goto_0
    const/4 v0, 0x0

    .line 167
    iput-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mMayStartFadeinAnimation:Z

    return-void
.end method

.method private startFadeoutAnimation()V
    .locals 3

    .line 184
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "startFadeoutAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getFadeoutAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v1, :cond_0

    .line 187
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 188
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 189
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 190
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    goto :goto_0

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->onFadeoutAnimationEnd()V

    :goto_0
    return-void
.end method

.method private startLoopAnimation()V
    .locals 3

    .line 171
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "startLoopAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getLoopAnimationOptions()Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;-><init>(Landroid/content/Context;Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$Options;)V

    iput-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    .line 175
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopListener:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;

    invoke-virtual {v0, v1}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->setOnAnimationDrawableListener(Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable$OnAnimationDrawableListener;)V

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_1

    .line 178
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 179
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->start()V

    :cond_1
    return-void
.end method

.method private stopFadeinAnimation(Z)V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopFadeinAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 217
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 219
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeinAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method

.method private stopFadeoutAnimation(Z)V
    .locals 2

    .line 236
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopFadeoutAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 238
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 239
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 241
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mFadeoutAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method

.method private stopLoopAnimation(Z)V
    .locals 2

    .line 225
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopLoopAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    .line 227
    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->stop()V

    const/4 v0, 0x0

    .line 228
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 230
    iput-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mLoopAnimationDrawable:Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/coloros/systemui/keyguard/view/ColorAnimationDrawable;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelAnimation isLoopAnimRunning="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 150
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->startFadeoutAnimation()V

    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->onFadeoutAnimationEnd()V

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

    .line 142
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pauseAnimation, releaseDrawable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopAllAnimation(Z)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 114
    invoke-virtual {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    .line 115
    invoke-super {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public startAnimation()V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "startAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 133
    invoke-virtual {p0, v0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->setVisibility(I)V

    .line 134
    iget-boolean v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->mMayStartFadeinAnimation:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->startFadeinAnimation()V

    goto :goto_0

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->startLoopAnimation()V

    :goto_0
    return-void
.end method

.method public stopAllAnimation(Z)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->TAG:Ljava/lang/String;

    const-string v1, "stopAllAnimation"

    invoke-static {v0, v1}, Lcom/coloros/systemui/keyguard/util/KgdLogUtil;->normal(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopFadeinAnimation(Z)V

    .line 209
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopLoopAnimation(Z)V

    .line 210
    invoke-direct {p0, p1}, Lcom/coloros/systemui/keyguard/charginganim/siphonanim/WiredChargingBaseAnimationView;->stopFadeoutAnimation(Z)V

    return-void
.end method
