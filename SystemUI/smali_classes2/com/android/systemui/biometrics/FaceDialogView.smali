.class public Lcom/android/systemui/biometrics/FaceDialogView;
.super Lcom/android/systemui/biometrics/BiometricDialogView;
.source "FaceDialogView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;,
        Lcom/android/systemui/biometrics/FaceDialogView$IconController;
    }
.end annotation


# static fields
.field private static final GROW_DURATION:I = 0x96

.field private static final HIDE_DIALOG_DELAY:I = 0x1f4

.field private static final IMPLICIT_Y_PADDING:I = 0x10

.field private static final KEY_DIALOG_ANIMATED_IN:Ljava/lang/String; = "key_dialog_animated_in"

.field private static final KEY_DIALOG_SIZE:Ljava/lang/String; = "key_dialog_size"

.field private static final SIZE_BIG:I = 0x3

.field private static final SIZE_GROWING:I = 0x2

.field private static final SIZE_SMALL:I = 0x1

.field private static final SIZE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "FaceDialogView"

.field private static final TEXT_ANIMATE_DISTANCE:I = 0x20


# instance fields
.field private mDialogAnimatedIn:Z

.field private final mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

.field private mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

.field private mIconOriginalY:F

.field private mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

.field private mSize:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V
    .locals 0

    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/biometrics/BiometricDialogView;-><init>(Landroid/content/Context;Lcom/android/systemui/biometrics/DialogViewCallback;)V

    .line 62
    new-instance p1, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;Lcom/android/systemui/biometrics/FaceDialogView$1;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    .line 150
    new-instance p1, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$czD-cP2iyglsmecT6GyDucy4syc;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$czD-cP2iyglsmecT6GyDucy4syc;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    .line 158
    new-instance p1, Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/biometrics/FaceDialogView;)Landroid/content/Context;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/FaceDialogView;F)F
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result p0

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/biometrics/FaceDialogView;I)I
    .locals 0

    .line 44
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    return p1
.end method

.method private dpToPixels(F)F
    .locals 1

    .line 484
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    mul-float/2addr p1, p0

    return p1
.end method

.method private pixelsToDp(F)F
    .locals 1

    .line 489
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    const/high16 v0, 0x43200000    # 160.0f

    div-float/2addr p0, v0

    div-float/2addr p1, p0

    return p1
.end method

.method private updateSize(I)V
    .locals 7

    const/high16 v0, 0x41800000    # 16.0f

    .line 162
    invoke-direct {p0, v0}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result v0

    .line 163
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    sub-float/2addr v1, v0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 168
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTitleText:Landroid/widget/TextView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 169
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 170
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 174
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 175
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 178
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 182
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 185
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 186
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v1}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->calculateSmall()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->setOutlineY(F)V

    .line 188
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 189
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    .line 191
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    goto/16 :goto_0

    .line 192
    :cond_2
    iget v2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v3, 0x3

    const/4 v4, 0x0

    if-ne v2, v0, :cond_3

    if-ne p1, v3, :cond_3

    const/4 p1, 0x2

    .line 193
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    .line 196
    new-array v2, p1, [F

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    .line 197
    invoke-virtual {v3}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->calculateSmall()I

    move-result v3

    int-to-float v3, v3

    aput v3, v2, v4

    const/4 v3, 0x0

    aput v3, v2, v0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    .line 198
    new-instance v5, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$MYsjnJHs10NhJPXX4FLFafo9YY8;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$MYsjnJHs10NhJPXX4FLFafo9YY8;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v2, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 205
    new-array v5, p1, [F

    aput v1, v5, v4

    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    aput v1, v5, v0

    .line 206
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    .line 207
    new-instance v5, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$sSRypCm7hC9Of8-MaBum8gJxI9Q;

    invoke-direct {v5, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$sSRypCm7hC9Of8-MaBum8gJxI9Q;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v1, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 213
    new-array v5, p1, [F

    const/high16 v6, 0x42000000    # 32.0f

    .line 214
    invoke-direct {p0, v6}, Lcom/android/systemui/biometrics/FaceDialogView;->dpToPixels(F)F

    move-result v6

    aput v6, v5, v4

    aput v3, v5, v0

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 215
    new-instance v3, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$6DWEWGhnaIhNrLSCCr7Op0b0jD4;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$6DWEWGhnaIhNrLSCCr7Op0b0jD4;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 222
    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 223
    new-instance v3, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$y85DatSeGK11aptJj_FqyvqURDw;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/-$$Lambda$FaceDialogView$y85DatSeGK11aptJj_FqyvqURDw;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 242
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    const-wide/16 v4, 0x96

    .line 243
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 244
    new-instance v4, Lcom/android/systemui/biometrics/FaceDialogView$1;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/FaceDialogView$1;-><init>(Lcom/android/systemui/biometrics/FaceDialogView;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 268
    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p0

    .line 269
    invoke-virtual {p0, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 270
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    .line 271
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    if-ne v0, v3, :cond_4

    .line 272
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setClipToOutline(Z)V

    .line 273
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setY(F)V

    .line 277
    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    :cond_4
    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method protected getAuthenticatedAccessibilityResourceId()I
    .locals 0

    .line 387
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mRequireConfirmation:Z

    if-eqz p0, :cond_0

    .line 388
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_face_authenticated_confirmation_required:I

    return p0

    .line 390
    :cond_0
    sget p0, Lcom/coloros/common/util/ResourceUtil;->android_string_face_authenticated_no_confirmation_required:I

    return p0
.end method

.method protected getDelayAfterAuthenticatedDurationMs()I
    .locals 0

    const/16 p0, 0x1f4

    return p0
.end method

.method protected getHintStringResourceId()I
    .locals 0

    const p0, 0x7f110342

    return p0
.end method

.method protected getIconDescriptionResourceId()I
    .locals 0

    const p0, 0x7f110070

    return p0
.end method

.method protected handleResetMessage()V
    .locals 3

    .line 291
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView;->getHintStringResourceId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 292
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView;->getHintStringResourceId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 293
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTextColor:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 295
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 297
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$new$0$FaceDialogView()V
    .locals 1

    const/4 v0, 0x0

    .line 151
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/FaceDialogView;->updateState(I)V

    .line 152
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public synthetic lambda$updateSize$1$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 199
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 200
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mOutlineProvider:Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;

    invoke-virtual {v0, p1}, Lcom/android/systemui/biometrics/FaceDialogView$DialogOutlineProvider;->setOutlineY(F)V

    .line 201
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialog:Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->invalidateOutline()V

    return-void
.end method

.method public synthetic lambda$updateSize$2$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 208
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 209
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setY(F)V

    return-void
.end method

.method public synthetic lambda$updateSize$3$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 216
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 217
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTranslationY(F)V

    return-void
.end method

.method public synthetic lambda$updateSize$4$FaceDialogView(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 224
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    .line 227
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 228
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 229
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mNegativeButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setAlpha(F)V

    .line 233
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 234
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSubtitleText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 237
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_1
    return-void
.end method

.method public onAuthenticationFailed(Ljava/lang/String;)V
    .locals 0

    .line 357
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onAuthenticationFailed(Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 358
    invoke-virtual {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->showTryAgainButton(Z)V

    return-void
.end method

.method public onDialogAnimatedIn()V
    .locals 1

    const/4 v0, 0x1

    .line 466
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    .line 467
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->startPulsing()V

    return-void
.end method

.method public onErrorReceived(Ljava/lang/String;)V
    .locals 1

    .line 347
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onErrorReceived(Ljava/lang/String;)V

    .line 350
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x3

    .line 351
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :cond_0
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 319
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/biometrics/BiometricDialogView;->onLayout(ZIIII)V

    .line 321
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    .line 322
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconOriginalY:F

    .line 327
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_1

    .line 332
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :cond_1
    return-void

    .line 338
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/FaceDialogView;->requiresConfirmation()Z

    move-result p1

    if-nez p1, :cond_3

    .line 339
    invoke-direct {p0, p2}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x3

    .line 341
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    :goto_0
    return-void
.end method

.method public onSaveState(Landroid/os/Bundle;)V
    .locals 2

    .line 283
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->onSaveState(Landroid/os/Bundle;)V

    .line 284
    iget v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const-string v1, "key_dialog_size"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 285
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    const-string v0, "key_dialog_animated_in"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 1

    .line 303
    invoke-super {p0, p1}, Lcom/android/systemui/biometrics/BiometricDialogView;->restoreState(Landroid/os/Bundle;)V

    const-string v0, "key_dialog_size"

    .line 305
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const-string v0, "key_dialog_animated_in"

    .line 306
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    return-void
.end method

.method protected shouldGrayAreaDismissDialog()Z
    .locals 1

    .line 477
    iget p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v0
.end method

.method public showTryAgainButton(Z)V
    .locals 3

    const/16 v0, 0x8

    if-eqz p1, :cond_0

    .line 363
    iget v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mSize:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v1, 0x3

    .line 366
    invoke-direct {p0, v1}, Lcom/android/systemui/biometrics/FaceDialogView;->updateSize(I)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 369
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTryAgainButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 371
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mTryAgainButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    if-eqz p1, :cond_2

    .line 376
    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mPositiveButton:Landroid/widget/Button;

    invoke-virtual {p0, v0}, Landroid/widget/Button;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected updateIcon(II)V
    .locals 9

    .line 401
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    iput p2, v0, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->mState:I

    const-wide/16 v1, 0x7d0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne p2, v3, :cond_1

    .line 404
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 405
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mDialogAnimatedIn:Z

    if-eqz v0, :cond_0

    .line 406
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->startPulsing()V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    const v3, 0x7f080716

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->showIcon(I)V

    .line 411
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    const v5, 0x7f110187

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_1
    const/4 v5, 0x3

    const v6, 0x7f080712

    const/4 v7, 0x4

    if-ne p1, v5, :cond_2

    if-ne p2, v7, :cond_2

    .line 414
    invoke-virtual {v0, v6}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 415
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    const v5, 0x7f110188

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_2
    const v0, 0x7f110189

    if-ne p1, v4, :cond_3

    if-nez p2, :cond_3

    .line 418
    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    const v5, 0x7f080714

    invoke-virtual {v3, v5}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 419
    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_3
    const v8, 0x7f110186

    if-ne p1, v4, :cond_4

    if-ne p2, v7, :cond_4

    .line 422
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 423
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 424
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_4
    if-ne p2, v4, :cond_5

    .line 432
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 433
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    const v3, 0x7f080713

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_5
    if-ne p1, v3, :cond_6

    if-ne p2, v7, :cond_6

    .line 438
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    invoke-virtual {v0, v6}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 439
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    if-ne p2, v5, :cond_7

    .line 442
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 443
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    const v3, 0x7f080718

    invoke-virtual {v0, v3}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->animateOnce(I)V

    .line 444
    iget-object v0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    if-nez p2, :cond_8

    .line 447
    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mIconController:Lcom/android/systemui/biometrics/FaceDialogView$IconController;

    const v5, 0x7f080715

    invoke-virtual {v3, v5}, Lcom/android/systemui/biometrics/FaceDialogView$IconController;->showStatic(I)V

    .line 448
    iget-object v3, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mBiometricIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 451
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown animation from "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " -> "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "FaceDialogView"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_1
    if-ne p1, v4, :cond_a

    if-ne p2, v4, :cond_a

    .line 459
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 460
    iget-object p1, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/biometrics/FaceDialogView;->mErrorToIdleAnimationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_a
    return-void
.end method
