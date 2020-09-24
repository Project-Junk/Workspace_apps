.class public abstract Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.super Ljava/lang/Object;
.source "KeyguardSecurityAbsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;,
        Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;
    }
.end annotation


# instance fields
.field mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

.field mChildAppearTranslationY:I

.field mContainerView:Landroid/view/View;

.field mEditView:Landroid/view/View;

.field mEmergencyView:Landroid/view/View;

.field mForgetPasswordView:Landroid/view/View;

.field mKeyboardTranslationY:I

.field mKeyboardView:Landroid/view/View;

.field mMessageView:Landroid/view/View;

.field mNavigationView:Landroid/view/View;

.field mResources:Landroid/content/res/Resources;

.field mShowPasswordView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mContainerView:Landroid/view/View;

    .line 42
    iput-object p2, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mMessageView:Landroid/view/View;

    .line 43
    iput-object p3, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mEditView:Landroid/view/View;

    .line 44
    iput-object p4, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mEmergencyView:Landroid/view/View;

    .line 45
    iput-object p5, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mKeyboardView:Landroid/view/View;

    .line 46
    iput-object p6, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mNavigationView:Landroid/view/View;

    .line 47
    iput-object p7, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mForgetPasswordView:Landroid/view/View;

    .line 48
    iput-object p8, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mShowPasswordView:Landroid/view/View;

    .line 49
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mContainerView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mResources:Landroid/content/res/Resources;

    .line 50
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f07042e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mChildAppearTranslationY:I

    .line 51
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f070438

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mKeyboardTranslationY:I

    .line 52
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3ea8f5c3    # 0.33f

    const/4 p3, 0x0

    const p4, 0x3f2b851f    # 0.67f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 0

    .line 18
    invoke-direct/range {p0 .. p8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;->getScaleAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object p0

    return-object p0
.end method

.method private getScaleAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 4

    const/4 p0, 0x2

    .line 137
    new-array v0, p0, [F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 v2, 0x1

    aput p3, v0, v2

    const-string v3, "ScaleX"

    invoke-static {v3, v0}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v0

    .line 138
    new-array v3, p0, [F

    aput p2, v3, v1

    aput p3, v3, v2

    const-string p2, "ScaleY"

    invoke-static {p2, v3}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object p2

    .line 139
    new-array p0, p0, [Landroid/animation/PropertyValuesHolder;

    aput-object v0, p0, v1

    aput-object p2, p0, v2

    invoke-static {p1, p0}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 140
    invoke-virtual {p0, p4, p5}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 141
    invoke-virtual {p0, p6, p7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 142
    invoke-virtual {p0, p8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method


# virtual methods
.method getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;
    .locals 5

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    if-nez p2, :cond_0

    cmpl-float p2, p3, v3

    if-nez p2, :cond_0

    move p2, v1

    goto :goto_0

    :cond_0
    move p2, v2

    :goto_0
    const/4 p3, 0x2

    .line 96
    new-array p3, p3, [F

    if-eqz p2, :cond_1

    move v4, v0

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    aput v4, p3, v2

    if-eqz p2, :cond_2

    move v0, v3

    :cond_2
    aput v0, p3, v1

    const-string v0, "Alpha"

    invoke-static {p1, v0, p3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    .line 97
    invoke-virtual {p3, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 98
    invoke-virtual {p3, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 99
    invoke-virtual {p3, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 100
    new-instance p4, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;

    invoke-direct {p4, p0, p2, p1, p9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$1;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;ZLandroid/view/View;Z)V

    invoke-virtual {p3, p4}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object p3
.end method

.method public abstract getAppearAnimator()Landroid/animation/Animator;
.end method

.method public abstract getDisappearAnimator()Landroid/animation/Animator;
.end method

.method getTranslationYAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;
    .locals 1

    const/4 p0, 0x2

    .line 128
    new-array p0, p0, [F

    const/4 v0, 0x0

    aput p2, p0, v0

    const/4 p2, 0x1

    aput p3, p0, p2

    const-string p2, "TranslationY"

    invoke-static {p1, p2, p0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    .line 129
    invoke-virtual {p0, p4, p5}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 130
    invoke-virtual {p0, p6, p7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 131
    invoke-virtual {p0, p8}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-object p0
.end method
