.class public Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;
.super Ljava/lang/Object;
.source "FingerAnimator.java"


# static fields
.field private static final ANIMATION_DURATION:I = 0xfa

.field public static final ANIMATION_TIME:I = 0x190

.field private static final ANNOUNCE_DELAYED_MORE_TIME:I = 0x32

.field private static final ANNOUNCE_DELAYED_TIME:I = 0x1e

.field private static final WIDTH:F = 1080.0f


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 0

    .line 23
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public static dismissTranslationAnimation(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 232
    invoke-static {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static getTranslateAnimation(FF)Landroid/view/animation/TranslateAnimation;
    .locals 10

    .line 243
    new-instance v9, Landroid/view/animation/TranslateAnimation;

    const/4 v1, 0x2

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v0, v9

    move v2, p0

    move v4, p1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    const-wide/16 p0, 0x190

    .line 246
    invoke-virtual {v9, p0, p1}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    return-object v9
.end method

.method public static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 310
    invoke-static/range {v0 .. v6}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    return-void
.end method

.method public static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 319
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz p3, :cond_1

    .line 320
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v0

    goto :goto_1

    :cond_1
    move v3, v1

    .line 321
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    if-eqz v2, :cond_2

    .line 322
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 325
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    move v0, v1

    :goto_2
    if-eqz v3, :cond_4

    .line 327
    invoke-virtual {p4, p5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    if-nez v0, :cond_3

    move-object p0, p3

    .line 331
    :cond_3
    invoke-interface {v4, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    if-eqz p0, :cond_5

    .line 334
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 335
    invoke-static {p0, v4, p6}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;Z)V

    :cond_5
    return-void
.end method

.method private static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 260
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 261
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 262
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-static {p0, p2, p3}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Z)V
    .locals 1

    if-eqz p0, :cond_0

    .line 252
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 253
    invoke-static {p0, v0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    :cond_0
    return-void
.end method

.method private static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    if-eqz p0, :cond_3

    .line 273
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isTalkbackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x4000

    .line 276
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 277
    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityEvent;->setSource(Landroid/view/View;)V

    .line 278
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 280
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 282
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 284
    invoke-interface {p1, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 287
    :cond_2
    :try_start_0
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityEvent;->recycle()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 289
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "FingerAnimator AccessibilityEvent exceptiion = "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/coloros/settings/utils/ak;->a(Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private static sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;Z)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 296
    new-instance p2, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$3;

    invoke-direct {p2, p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$3;-><init>(Landroid/widget/TextView;Ljava/util/List;)V

    const-wide/16 v0, 0x32

    invoke-virtual {p0, p2, v0, v1}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 303
    :cond_0
    invoke-static {p0, p1}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->sendAccessEventVisibility(Landroid/widget/TextView;Ljava/util/List;)V

    return-void
.end method

.method public static startPromoteAnimator(Landroid/content/Context;Landroid/widget/TextView;ILandroid/widget/TextView;I)V
    .locals 11

    .line 39
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x0

    const-wide/16 v4, 0xfa

    const/4 v6, 0x2

    const-string v7, "translationX"

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    .line 42
    new-array v2, v6, [F

    fill-array-data v2, :array_0

    invoke-static {p1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 43
    new-array v8, v6, [F

    fill-array-data v8, :array_1

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 44
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 45
    invoke-virtual {v8, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_1
    move-object v2, v0

    move-object v8, v2

    :goto_1
    if-eqz p3, :cond_4

    .line 48
    new-array v0, v6, [F

    fill-array-data v0, :array_2

    invoke-static {p3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 49
    new-array v6, v6, [F

    fill-array-data v6, :array_3

    invoke-static {p3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 50
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 51
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 55
    new-array v2, v6, [F

    fill-array-data v2, :array_4

    invoke-static {p1, v7, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 56
    new-array v8, v6, [F

    fill-array-data v8, :array_5

    invoke-static {p1, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 57
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    invoke-virtual {v8, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_3
    move-object v2, v0

    move-object v8, v2

    :goto_2
    if-eqz p3, :cond_4

    .line 61
    new-array v0, v6, [F

    fill-array-data v0, :array_6

    invoke-static {p3, v7, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 62
    new-array v6, v6, [F

    fill-array-data v6, :array_7

    invoke-static {p3, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 63
    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 64
    invoke-virtual {v6, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_4
    move-object v6, v0

    .line 68
    :goto_3
    new-instance v4, Landroid/view/animation/PathInterpolator;

    const v5, 0x3e99999a    # 0.3f

    const/4 v7, 0x0

    const v9, 0x3dcccccd    # 0.1f

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-direct {v4, v5, v7, v9, v10}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 69
    new-instance v7, Landroid/animation/AnimatorSet;

    invoke-direct {v7}, Landroid/animation/AnimatorSet;-><init>()V

    .line 70
    invoke-virtual {v7, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v2, :cond_5

    if-eqz v0, :cond_5

    .line 72
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_5
    if-eqz v2, :cond_6

    .line 74
    invoke-virtual {v7, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    .line 76
    invoke-virtual {v7, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 78
    :cond_7
    :goto_4
    invoke-virtual {v7}, Landroid/animation/AnimatorSet;->start()V

    .line 79
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    .line 80
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v8, :cond_8

    if-eqz v6, :cond_8

    .line 82
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    :cond_8
    if-eqz v8, :cond_9

    .line 84
    invoke-virtual {v5, v8}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    :cond_9
    if-eqz v6, :cond_a

    .line 86
    invoke-virtual {v5, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 88
    :cond_a
    :goto_5
    new-instance v6, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;

    move-object v0, v6

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$1;-><init>(Landroid/widget/TextView;ILandroid/widget/TextView;ILandroid/animation/AnimatorSet;)V

    invoke-virtual {v7, v6}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x44870000    # 1080.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3b790000    # -1080.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x44870000    # 1080.0f
    .end array-data

    :array_3
    .array-data 4
        -0x3b790000    # -1080.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x3b790000    # -1080.0f
    .end array-data

    :array_5
    .array-data 4
        0x44870000    # 1080.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x3b790000    # -1080.0f
    .end array-data

    :array_7
    .array-data 4
        0x44870000    # 1080.0f
        0x0
    .end array-data
.end method

.method public static startTranslationAnimation(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    const/4 v0, 0x1

    .line 135
    invoke-static {p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator;->startTranslationAnimation(Landroid/view/View;Landroid/view/View;Z)V

    return-void
.end method

.method public static startTranslationAnimation(Landroid/view/View;Landroid/view/View;Z)V
    .locals 9

    .line 145
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v0, 0x0

    const-wide/16 v2, 0xfa

    const/4 v4, 0x2

    const-string v5, "translationX"

    if-eqz v1, :cond_2

    if-eqz p0, :cond_1

    .line 148
    new-array v1, v4, [F

    fill-array-data v1, :array_0

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 149
    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 151
    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_1

    :cond_1
    move-object v1, v0

    move-object v6, v1

    :goto_1
    if-eqz p1, :cond_4

    .line 154
    new-array v0, v4, [F

    fill-array-data v0, :array_2

    invoke-static {p1, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 155
    new-array v4, v4, [F

    fill-array-data v4, :array_3

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 156
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 157
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_2
    if-eqz p0, :cond_3

    .line 161
    new-array v1, v4, [F

    fill-array-data v1, :array_4

    invoke-static {p0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 162
    new-array v6, v4, [F

    fill-array-data v6, :array_5

    invoke-static {p0, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 163
    invoke-virtual {v1, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 164
    invoke-virtual {v6, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_2

    :cond_3
    move-object v1, v0

    move-object v6, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 167
    new-array v0, v4, [F

    fill-array-data v0, :array_6

    invoke-static {p1, v5, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 168
    new-array v4, v4, [F

    fill-array-data v4, :array_7

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 169
    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 170
    invoke-virtual {v4, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto :goto_3

    :cond_4
    move-object v4, v0

    .line 173
    :goto_3
    new-instance v2, Landroid/view/animation/PathInterpolator;

    const v3, 0x3e99999a    # 0.3f

    const/4 v5, 0x0

    const v7, 0x3dcccccd    # 0.1f

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-direct {v2, v3, v5, v7, v8}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 174
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 175
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 177
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_5
    if-eqz v1, :cond_6

    .line 179
    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_4

    :cond_6
    if-eqz v0, :cond_7

    .line 181
    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 183
    :cond_7
    :goto_4
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 184
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 185
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    if-eqz v6, :cond_8

    if-eqz v4, :cond_8

    .line 187
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    :cond_8
    if-eqz v6, :cond_9

    .line 189
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto :goto_5

    :cond_9
    if-eqz v4, :cond_a

    .line 191
    invoke-virtual {v0, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 193
    :cond_a
    :goto_5
    new-instance v1, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;

    invoke-direct {v1, p2, p0, p1, v0}, Lcom/coloros/settings/feature/fingerprint/view/FingerAnimator$2;-><init>(ZLandroid/view/View;Landroid/view/View;Landroid/animation/AnimatorSet;)V

    invoke-virtual {v3, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x44870000    # 1080.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3b790000    # -1080.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x44870000    # 1080.0f
    .end array-data

    :array_3
    .array-data 4
        -0x3b790000    # -1080.0f
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x0
        -0x3b790000    # -1080.0f
    .end array-data

    :array_5
    .array-data 4
        0x44870000    # 1080.0f
        0x0
    .end array-data

    :array_6
    .array-data 4
        0x0
        -0x3b790000    # -1080.0f
    .end array-data

    :array_7
    .array-data 4
        0x44870000    # 1080.0f
        0x0
    .end array-data
.end method
