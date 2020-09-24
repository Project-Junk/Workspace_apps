.class Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardSecurityNormalState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->getAppearAnimator()Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;

.field final synthetic val$childViews:[Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;[Landroid/view/View;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;

    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;->val$childViews:[Landroid/view/View;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 5

    .line 62
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;->this$0:Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;

    iget-object p1, p1, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mContainerView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 63
    iget-object p0, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;->val$childViews:[Landroid/view/View;

    array-length p1, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_2

    aget-object v2, p0, v1

    if-eqz v2, :cond_1

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    const/16 v4, 0x8

    if-ne v3, v4, :cond_0

    goto :goto_1

    .line 65
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
