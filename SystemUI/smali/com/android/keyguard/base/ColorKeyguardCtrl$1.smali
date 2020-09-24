.class Lcom/android/keyguard/base/ColorKeyguardCtrl$1;
.super Ljava/lang/Object;
.source "ColorKeyguardCtrl.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/base/ColorKeyguardCtrl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;


# direct methods
.method constructor <init>(Lcom/android/keyguard/base/ColorKeyguardCtrl;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/android/keyguard/base/ColorKeyguardCtrl$1;->this$0:Lcom/android/keyguard/base/ColorKeyguardCtrl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 4

    const/high16 p0, 0x3f000000    # 0.5f

    cmpg-float p0, p1, p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    if-gez p0, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    add-float/2addr p1, p0

    float-to-double p0, p1

    mul-double/2addr p0, v2

    .line 80
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    :goto_0
    add-double/2addr p0, v0

    double-to-float p0, p0

    return p0

    :cond_0
    float-to-double p0, p1

    mul-double/2addr p0, v2

    .line 82
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    goto :goto_0
.end method
