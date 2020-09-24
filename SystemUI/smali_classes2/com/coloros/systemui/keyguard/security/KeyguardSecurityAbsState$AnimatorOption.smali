.class Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;
.super Ljava/lang/Object;
.source "KeyguardSecurityAbsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimatorOption"
.end annotation


# instance fields
.field delay:J

.field duration:J

.field endValue:F

.field interpolator:Landroid/animation/TimeInterpolator;

.field startValue:F

.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 155
    iput p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->startValue:F

    .line 156
    iput p3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->endValue:F

    .line 157
    iput-wide p4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->delay:J

    .line 158
    iput-wide p6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->duration:J

    .line 159
    iput-object p8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;->interpolator:Landroid/animation/TimeInterpolator;

    return-void
.end method
