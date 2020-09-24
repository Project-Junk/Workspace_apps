.class public Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;
.super Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.source "KeyguardSecurityBiometricState.java"


# instance fields
.field private mScaleInterpolator:Landroid/view/animation/PathInterpolator;

.field private mTransInterpolator:Landroid/view/animation/PathInterpolator;


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

    .line 25
    invoke-direct/range {p0 .. p8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 27
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const/4 p2, 0x0

    const p3, 0x3e8f5c29    # 0.28f

    const p4, 0x3f1c28f6    # 0.61f

    const p5, 0x3f63d70a    # 0.89f

    invoke-direct {p1, p3, p2, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    .line 28
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p3, 0x3e99999a    # 0.3f

    const p4, 0x3dcccccd    # 0.1f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p1, p3, p2, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mScaleInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public getAppearAnimator()Landroid/animation/Animator;
    .locals 19

    move-object/from16 v10, p0

    .line 33
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 34
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 35
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEditView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_0
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEmergencyView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 40
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07042d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 41
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardView:Landroid/view/View;

    const/4 v13, 0x0

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    neg-int v0, v0

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v0, 0x3e99999a    # 0.3f

    const/4 v1, 0x0

    const/high16 v15, 0x3f800000    # 1.0f

    invoke-direct {v8, v0, v1, v15, v15}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

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
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mNavigationView:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0xfa

    goto/16 :goto_0

    .line 48
    :cond_1
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEmergencyView:Landroid/view/View;

    const/4 v13, 0x1

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mChildAppearTranslationY:I

    neg-int v0, v0

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v14

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v6, 0xa7

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 51
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    new-instance v9, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v9}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 53
    new-instance v12, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v13, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardView:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardTranslationY:I

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

    .line 56
    invoke-virtual {v12}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v0, 0x14d

    :goto_0
    move-wide v12, v0

    .line 59
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v14, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mShowPasswordView:Landroid/view/View;

    const/4 v15, 0x1

    const/16 v16, 0x0

    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v6, 0xc8

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move-wide v4, v12

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v18, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const v2, 0x3f666666    # 0.9f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mScaleInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    move-object v0, v9

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 62
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 63
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getScaleAlphaAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-interface {v11, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDisappearAnimator()Landroid/animation/Animator;
    .locals 19

    move-object/from16 v10, p0

    .line 70
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 71
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEditView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 72
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEditView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    :cond_0
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEmergencyView:Landroid/view/View;

    const/high16 v9, 0x3f800000    # 1.0f

    const v12, 0x3dcccccd    # 0.1f

    const/4 v13, 0x0

    if-nez v0, :cond_1

    .line 76
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f07042c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 77
    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v15, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardView:Landroid/view/View;

    const/16 v16, 0x0

    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x14a

    new-instance v8, Landroid/view/animation/PathInterpolator;

    invoke-direct {v8, v13, v13, v12, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v9

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object v5, v9

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 80
    invoke-virtual {v14}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mNavigationView:Landroid/view/View;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v9, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->getAlphaAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;Z)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 83
    :cond_1
    iget-object v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mContainerView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070437

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 84
    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v15, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mEmergencyView:Landroid/view/View;

    const/16 v16, 0x1

    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    neg-int v0, v0

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v18, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v14

    move-object v2, v15

    move/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v18

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 87
    invoke-virtual {v14}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v8, Landroid/view/animation/PathInterpolator;

    invoke-direct {v8, v13, v13, v12, v9}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 89
    new-instance v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardView:Landroid/view/View;

    const/4 v13, 0x0

    new-instance v14, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mKeyboardTranslationY:I

    int-to-float v2, v0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xfa

    move-object v0, v14

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object v0, v15

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v9

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 92
    invoke-virtual {v9}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :goto_0
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    .line 95
    invoke-virtual {v9, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 96
    new-instance v11, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v12, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mShowPasswordView:Landroid/view/View;

    const/4 v13, 0x1

    const/4 v14, 0x0

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0xc8

    new-instance v8, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v8}, Landroid/view/animation/LinearInterpolator;-><init>()V

    move-object v0, v15

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const v3, 0x3f666666    # 0.9f

    iget-object v8, v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityBiometricState;->mScaleInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v16

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    move-object v0, v11

    move-object v2, v12

    move v3, v13

    move-object v4, v14

    move-object v5, v15

    move-object/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 99
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 100
    invoke-virtual {v0, v9}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v11}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getScaleAlphaAnimator()Landroid/animation/Animator;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0
.end method
