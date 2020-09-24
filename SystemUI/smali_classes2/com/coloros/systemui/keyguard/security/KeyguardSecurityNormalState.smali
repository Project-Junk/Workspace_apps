.class public Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;
.super Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;
.source "KeyguardSecurityNormalState.java"


# instance fields
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

    .line 26
    invoke-direct/range {p0 .. p8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;-><init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;Landroid/view/View;)V

    .line 28
    new-instance p1, Landroid/view/animation/PathInterpolator;

    const p2, 0x3e947ae1    # 0.29f

    const p3, 0x3f547ae1    # 0.83f

    const p4, 0x3e4ccccd    # 0.2f

    const/high16 p5, 0x3f800000    # 1.0f

    invoke-direct {p1, p2, p3, p4, p5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object p1, p0, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    return-void
.end method


# virtual methods
.method public getAppearAnimator()Landroid/animation/Animator;
    .locals 21

    move-object/from16 v9, p0

    .line 33
    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070430

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 34
    new-instance v10, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v11, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mContainerView:Landroid/view/View;

    new-instance v12, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    int-to-float v2, v0

    iget-object v8, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x1f4

    move-object v0, v12

    move-object/from16 v1, p0

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v13, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget-object v8, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0xa7

    const-wide/16 v6, 0xa7

    move-object v0, v13

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, v10

    move-object v2, v11

    move-object v4, v12

    move-object v5, v13

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 38
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    .line 41
    new-array v10, v0, [Landroid/view/View;

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mMessageView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, v10, v1

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEditView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v0, v10, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEmergencyView:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v0, v10, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardView:Landroid/view/View;

    const/4 v2, 0x3

    aput-object v0, v10, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mNavigationView:Landroid/view/View;

    const/4 v2, 0x4

    aput-object v0, v10, v2

    .line 42
    array-length v12, v10

    move v13, v1

    move v14, v13

    :goto_0
    if-ge v13, v12, :cond_2

    aget-object v15, v10, v13

    if-eqz v15, :cond_1

    .line 43
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    instance-of v0, v15, Lcom/color/support/widget/ColorKeyboardView;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 44
    :cond_0
    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    const/16 v17, 0x0

    new-instance v18, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mChildAppearTranslationY:I

    int-to-float v2, v0

    const/4 v3, 0x0

    mul-int/lit8 v8, v14, 0x64

    int-to-long v4, v8

    const-wide/16 v6, 0x1f4

    iget-object v1, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mTransInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v18

    move-object/from16 v19, v1

    move-object/from16 v1, p0

    move/from16 v20, v12

    move v12, v8

    move-object/from16 v8, v19

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v19, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    add-int/lit16 v8, v12, 0xa7

    int-to-long v4, v8

    const-wide/16 v6, 0xa7

    iget-object v8, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

    move-object/from16 v0, v19

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object/from16 v0, v16

    move-object v2, v15

    move/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 48
    invoke-virtual/range {v16 .. v16}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v20, v12

    :goto_2
    add-int/lit8 v13, v13, 0x1

    move/from16 v12, v20

    goto :goto_0

    .line 51
    :cond_2
    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEmergencyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 52
    new-instance v8, Landroid/view/animation/PathInterpolator;

    const v0, 0x3dcccccd    # 0.1f

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v8, v2, v2, v0, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 53
    new-instance v12, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v13, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardView:Landroid/view/View;

    const/4 v14, 0x0

    new-instance v15, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    iget v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardTranslationY:I

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

    iget-object v8, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mAlphaInterpolator:Landroid/view/animation/PathInterpolator;

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

    .line 58
    :cond_3
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 59
    new-instance v1, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;

    invoke-direct {v1, v9, v10}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState$1;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;[Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 69
    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDisappearAnimator()Landroid/animation/Animator;
    .locals 25

    move-object/from16 v9, p0

    .line 75
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 76
    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mResources:Landroid/content/res/Resources;

    const v1, 0x7f070431

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 77
    iget-object v1, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mResources:Landroid/content/res/Resources;

    const v2, 0x7f070439

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v11

    .line 78
    new-instance v12, Landroid/view/animation/PathInterpolator;

    const/high16 v1, 0x3f800000    # 1.0f

    const v2, 0x3e19999a    # 0.15f

    const/4 v3, 0x0

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v12, v4, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 79
    new-instance v13, Landroid/view/animation/PathInterpolator;

    invoke-direct {v13, v3, v3, v2, v1}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 81
    iget-object v1, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mContainerView:Landroid/view/View;

    neg-int v0, v0

    int-to-float v3, v0

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x15e

    move-object/from16 v0, p0

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->getTranslationYAnimator(Landroid/view/View;FFJJLandroid/animation/TimeInterpolator;)Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x5

    .line 84
    new-array v14, v0, [Landroid/view/View;

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mMessageView:Landroid/view/View;

    const/4 v1, 0x0

    aput-object v0, v14, v1

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEditView:Landroid/view/View;

    const/4 v2, 0x1

    aput-object v0, v14, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEmergencyView:Landroid/view/View;

    const/4 v2, 0x2

    aput-object v0, v14, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardView:Landroid/view/View;

    const/4 v2, 0x3

    aput-object v0, v14, v2

    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mNavigationView:Landroid/view/View;

    const/4 v2, 0x4

    aput-object v0, v14, v2

    .line 86
    array-length v15, v14

    move v8, v1

    move/from16 v16, v8

    :goto_0
    if-ge v8, v15, :cond_2

    aget-object v6, v14, v8

    if-eqz v6, :cond_1

    .line 87
    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_1

    instance-of v0, v6, Lcom/color/support/widget/ColorKeyboardView;

    if-eqz v0, :cond_0

    goto :goto_1

    .line 88
    :cond_0
    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    const/16 v18, 0x0

    new-instance v19, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    neg-int v0, v11

    int-to-float v3, v0

    mul-int/lit8 v0, v16, 0x1e

    add-int/lit8 v0, v0, 0x1e

    int-to-long v4, v0

    const-wide/16 v20, 0xfa

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    move-wide/from16 v22, v4

    move-object/from16 v24, v6

    move-wide/from16 v6, v20

    move/from16 v20, v8

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v21, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const-wide/16 v6, 0xfa

    move-object/from16 v0, v21

    move-object v8, v13

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object/from16 v0, v17

    move-object/from16 v2, v24

    move/from16 v3, v18

    move-object/from16 v4, v19

    move-object/from16 v5, v21

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 91
    invoke-virtual/range {v17 .. v17}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v16, v16, 0x1

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v20, v8

    :goto_2
    add-int/lit8 v8, v20, 0x1

    goto :goto_0

    .line 94
    :cond_2
    new-instance v11, Landroid/animation/AnimatorSet;

    invoke-direct {v11}, Landroid/animation/AnimatorSet;-><init>()V

    .line 95
    iget-object v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mEmergencyView:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 96
    new-instance v12, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v12}, Landroid/view/animation/LinearInterpolator;-><init>()V

    .line 97
    new-instance v13, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;

    iget-object v14, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardView:Landroid/view/View;

    const/4 v15, 0x0

    new-instance v16, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/4 v2, 0x0

    iget v0, v9, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityNormalState;->mKeyboardTranslationY:I

    int-to-float v3, v0

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x64

    move-object/from16 v0, v16

    move-object/from16 v1, p0

    move-object v8, v12

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    new-instance v17, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v8}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;FFJJLandroid/animation/TimeInterpolator;)V

    const/4 v6, 0x0

    move-object v0, v13

    move-object v2, v14

    move v3, v15

    move-object/from16 v4, v16

    move-object/from16 v5, v17

    invoke-direct/range {v0 .. v6}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;-><init>(Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState;Landroid/view/View;ZLcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorOption;)V

    .line 100
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 101
    invoke-virtual {v0, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 102
    invoke-virtual {v13}, Lcom/coloros/systemui/keyguard/security/KeyguardSecurityAbsState$AnimatorWrapper;->getTranslationAlphaAnimator()Landroid/animation/Animator;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {v11, v10}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    :goto_3
    return-object v11
.end method
