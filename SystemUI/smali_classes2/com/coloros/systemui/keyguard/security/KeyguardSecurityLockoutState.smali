.class public Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;
.super Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.source "KeyguardSecurityLockoutState.java"


# instance fields
.field private mChildDisappearTranslationY:I

.field private mTransInterpolator1:Landroid/view/animation/PathInterpolator;

.field private mTransInterpolator2:Landroid/view/animation/PathInterpolator;


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Lcom/android/keyguard/EmergencyButton;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
    .locals 0
    .param p3    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/android/keyguard/EmergencyButton;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 26
    invoke-direct/range {p0 .. p8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 28
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/high16 p2, 0x3f800000    # 1.0f

    const p3, 0x3e947ae1    # 0.29f

    const p4, 0x3f547ae1    # 0.83f

    const p5, 0x3e4ccccd    # 0.2f

    invoke-direct {p1, p3, p4, p5, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator1:Landroid/view/animation/PathInterpolator;

    .line 29
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e99999a    # 0.3f

    const/4 p4, 0x0

    const p5, 0x3dcccccd    # 0.1f

    invoke-direct {p1, p3, p4, p5, p2}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator2:Landroid/view/animation/PathInterpolator;

    .line 30
    iget-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mResources:Landroid/content/res/Resources;

    const p2, 0x7f07042f

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mChildDisappearTranslationY:I

    return-void
.end method


# virtual methods
.method public getAppearAnimator()Landroid/animation/Animator;
    .locals 17

    move-object/from16 v10, p0

    .line 35
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 37
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEditView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    :cond_0
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEmergencyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 41
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEmergencyView:Landroid/view/View;

    const/4 v13, 0x1

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mChildDisappearTranslationY:I

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14d

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator2:Landroid/view/animation/PathInterpolator;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 44
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 46
    new-instance v12, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v13, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardView:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardTranslationY:I

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    move-object v0, v15

    move-object v8, v9

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 49
    invoke-virtual {v12}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mNavigationView:Landroid/view/View;

    const/4 v13, 0x1

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mChildAppearTranslationY:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14d

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator1:Landroid/view/animation/PathInterpolator;

    move-object v0, v14

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xb7

    const-wide/16 v6, 0x16f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 53
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 55
    :cond_1
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    :goto_0
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mForgetPasswordView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x85

    const-wide/16 v6, 0x16f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 61
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDisappearAnimator()Landroid/animation/Animator;
    .locals 18

    move-object/from16 v10, p0

    .line 67
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 68
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mForgetPasswordView:Landroid/view/View;

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xa7

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEditView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x85

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_0
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEmergencyView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 75
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mEmergencyView:Landroid/view/View;

    const/4 v13, 0x1

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mChildDisappearTranslationY:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14d

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator2:Landroid/view/animation/PathInterpolator;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 78
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v8, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 79
    new-instance v12, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v13, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardView:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardTranslationY:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v12

    move-object v2, v13

    move v3, v14

    move-object v4, v15

    move-object/from16 v5, v16

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 83
    new-instance v13, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v14, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mNavigationView:Landroid/view/View;

    const/4 v15, 0x1

    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mChildAppearTranslationY:I

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14d

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mTransInterpolator1:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0xb7

    const-wide/16 v6, 0x16f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 86
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    invoke-virtual {v12}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    invoke-virtual {v13}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 90
    :cond_1
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mKeyboardView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x85

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityLockoutState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :goto_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 94
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method
