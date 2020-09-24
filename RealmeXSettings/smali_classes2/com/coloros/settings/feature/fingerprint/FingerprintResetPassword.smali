.class public Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "FingerprintResetPassword.java"

# interfaces
.implements Lcom/android/settings/b/a$a;


# static fields
.field private static final COUNT_RESET:I = 0x4

.field private static final COUNT_TIME:I = 0x3e8

.field public static final REQUEST_CODE_RESET:I = 0x1

.field private static final START_OPTICAL_FP_DELAY:I = 0x64

.field private static final START_OPTICAL_FP_LISTEN:I = 0x1

.field private static final STATE_CERTIFY:I = 0x1

.field private static final STATE_INIT:I = 0x0

.field private static final STATE_PASSWORD_WATIT:I = 0x4

.field private static final STATE_WATIT:I = 0x2

.field private static final STATE_WATIT_MESSAGE:I = 0x3

.field private static final TAG:Ljava/lang/String; = "FingerprintResetPassword"


# instance fields
.field private mCount:I

.field private mEnrollAnimationLayout:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

.field private mFingerCountdown:Z

.field private mFingerCountdownTimer:Landroid/os/CountDownTimer;

.field private mFingerprintUiHelper:Lcom/android/settings/b/a;

.field private mHandler:Landroid/os/Handler;

.field private mHasFinished:Z

.field private mIsOpticalFingerPrint:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mOpticalColor:I

.field private mPromptLarge:Landroid/widget/TextView;

.field private mPromptSmall:Landroid/widget/TextView;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 87
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$1;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Lcom/android/settings/b/a;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    return-object p0
.end method

.method static synthetic access$100(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->initCountDown()V

    return-void
.end method

.method static synthetic access$200(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Landroid/os/CountDownTimer;
    .locals 0

    .line 56
    iget-object p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static synthetic access$302(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHasFinished:Z

    return p1
.end method

.method static synthetic access$400(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)Z
    .locals 0

    .line 56
    iget-boolean p0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    return p0
.end method

.method static synthetic access$402(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;Z)Z
    .locals 0

    .line 56
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    return p1
.end method

.method static synthetic access$500(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;II)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->updateTips(II)V

    return-void
.end method

.method private countDown(JZ)V
    .locals 8

    const/4 v0, 0x1

    .line 331
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    .line 332
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 333
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 335
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, "countDown stopListening "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetPassword"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    .line 337
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;

    const-wide/16 v5, 0x3e8

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;JJZ)V

    .line 357
    invoke-virtual {v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$4;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private initCountDown()V
    .locals 4

    .line 322
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    .line 324
    invoke-direct {p0, v0, v1, v2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->countDown(JZ)V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 326
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    return-void
.end method

.method private initToolbar(Z)V
    .locals 2

    const v0, 0x7f0a070a

    .line 151
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    .line 152
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 153
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f06000b

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setTitleTextColor(I)V

    .line 156
    new-instance p1, Landroid/graphics/drawable/ColorDrawable;

    iget v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mOpticalColor:I

    invoke-direct {p1, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, p1}, Lcolor/support/v7/widget/Toolbar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_0
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 159
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 160
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 162
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_1
    return-void
.end method

.method private updateTips(II)V
    .locals 5

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "updateTips "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetPassword"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f1209dd

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p1, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_3

    const/4 v4, 0x2

    if-eq p1, v4, :cond_2

    const/4 v4, 0x3

    if-eq p1, v4, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 268
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    const v0, 0x7f120cf3

    new-array v3, v3, [Ljava/lang/Object;

    .line 270
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    .line 268
    invoke-virtual {p0, v0, v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 271
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 263
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 264
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mEnrollAnimationLayout:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->fullEnrollProgressBg(Z)V

    return-void

    .line 257
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    const v0, 0x7f120b75

    new-array v3, v3, [Ljava/lang/Object;

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v2

    .line 257
    invoke-virtual {p0, v0, v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 248
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    const v0, 0x7f1209db

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 249
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/android/settings/b/a;->a(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 250
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mEnrollAnimationLayout:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {p1, v3}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->fullEnrollProgressBg(Z)V

    .line 252
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    if-nez p1, :cond_4

    .line 253
    sget-object p1, Lcom/coloros/settings/utils/ag;->a:[J

    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->vibrateByUser([J)V

    :cond_4
    :goto_0
    return-void

    .line 243
    :cond_5
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 244
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 245
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mEnrollAnimationLayout:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    invoke-virtual {p1, v2}, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;->fullEnrollProgressBg(Z)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 99
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 314
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 316
    invoke-virtual {p0, p2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->setResult(I)V

    .line 317
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    :cond_0
    return-void
.end method

.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 5

    .line 362
    iget-object p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {p2}, Lcom/android/settings/b/a;->a()J

    move-result-wide v0

    .line 363
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v2, "onAuthenticationError "

    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "FingerprintResetPassword"

    invoke-static {v2, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    iget-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHasFinished:Z

    if-eqz p2, :cond_0

    .line 365
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->d()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "onAuthenticationError stopListening"

    .line 366
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    return-void

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long p2, v0, v3

    const/4 v3, 0x1

    if-lez p2, :cond_1

    .line 370
    invoke-direct {p0, v0, v1, v3}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->countDown(JZ)V

    return-void

    .line 371
    :cond_1
    iget-boolean p2, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdown:Z

    if-nez p2, :cond_3

    const/4 p2, 0x3

    .line 372
    invoke-direct {p0, p2, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->updateTips(II)V

    if-eq p1, v3, :cond_2

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x7

    if-ne p1, p2, :cond_3

    :cond_2
    const-string p1, "onAuthenticationError stopListening startListening"

    .line 376
    invoke-static {v2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->c()V

    .line 378
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {p1}, Lcom/android/settings/b/a;->b()V

    :cond_3
    return-void
.end method

.method public onAuthenticationFailed(I)V
    .locals 2

    .line 385
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onAuthenticationFailed "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FingerprintResetPassword"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 386
    invoke-direct {p0, v0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->updateTips(II)V

    return-void
.end method

.method public onAuthenticationHelp(ILjava/lang/CharSequence;)V
    .locals 0

    .line 391
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "onAuthenticationHelp "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "FingerprintResetPassword"

    invoke-static {p2, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/fingerprint/FingerprintManager$AuthenticationResult;)V
    .locals 8

    .line 280
    invoke-static {p0}, Lcom/android/settings/m;->h(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p1

    if-eqz p1, :cond_6

    const/4 v0, 0x0

    const-string v1, "getFingerprintAuthToken"

    .line 1113
    invoke-static {p1, v1, v0, v0}, Lcom/coloros/b/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    check-cast p1, [B

    .line 283
    new-instance v1, Lcom/coloros/settings/privacy/a/j;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/a/j;-><init>(Landroid/content/Context;)V

    .line 284
    new-instance v2, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;

    invoke-direct {v2, p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$3;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V

    .line 1139
    invoke-static {}, Lcom/coloros/settings/e/a;->a()Z

    move-result v3

    const-string v4, "ScreenLockResetController"

    if-eqz v3, :cond_0

    const-string p1, "checkScreenLockToken only main user need do this"

    .line 1140
    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eqz p1, :cond_5

    .line 1143
    iget v5, v1, Lcom/coloros/settings/privacy/a/j;->a:I

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    goto/16 :goto_2

    .line 1151
    :cond_1
    new-instance v5, Lcom/coloros/settings/privacy/a/d;

    sget-object v6, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-direct {v5, v6}, Lcom/coloros/settings/privacy/a/d;-><init>(Lcom/coloros/settings/privacy/a/f;)V

    .line 1152
    sget-object v6, Lcom/coloros/settings/privacy/a/e;->b:Lcom/coloros/settings/privacy/a/e;

    iget v1, v1, Lcom/coloros/settings/privacy/a/j;->a:I

    invoke-virtual {v5, v6, v1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1153
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->e:Lcom/coloros/settings/privacy/a/e;

    const/16 v6, 0x8

    invoke-virtual {v5, v1, v6}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;I)Lcom/coloros/settings/privacy/a/d;

    .line 1154
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->f:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {v5, v1, p1}, Lcom/coloros/settings/privacy/a/d;->a(Lcom/coloros/settings/privacy/a/e;[B)Lcom/coloros/settings/privacy/a/d;

    .line 1155
    invoke-virtual {v5}, Lcom/coloros/settings/privacy/a/d;->a()[B

    move-result-object p1

    .line 1157
    :try_start_0
    invoke-static {}, Lcom/coloros/settings/privacy/a/h;->a()Lcom/coloros/settings/privacy/a/h;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/coloros/settings/privacy/a/h;->a([B)[B

    move-result-object p1

    .line 1158
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/i;->a([B)Lcom/coloros/settings/privacy/a/i$b;

    move-result-object p1

    .line 1159
    sget-object v1, Lcom/coloros/settings/privacy/a/f;->c:Lcom/coloros/settings/privacy/a/f;

    invoke-static {p1, v1}, Lcom/coloros/settings/privacy/a/j;->a(Lcom/coloros/settings/privacy/a/i$b;Lcom/coloros/settings/privacy/a/f;)Z

    move-result v1

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 1161
    sget-object v1, Lcom/coloros/settings/privacy/a/e;->g:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, v1}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object v1

    .line 1234
    iget-object v1, v1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 1163
    invoke-static {v1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1165
    sget-object v5, Lcom/coloros/settings/privacy/a/e;->c:Lcom/coloros/settings/privacy/a/e;

    invoke-virtual {p1, v5}, Lcom/coloros/settings/privacy/a/i$b;->a(Lcom/coloros/settings/privacy/a/e;)Lcom/coloros/settings/privacy/a/i$a;

    move-result-object p1

    .line 1166
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "checkToken pwd = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x1

    if-eqz p1, :cond_2

    move v7, v6

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_4

    .line 2234
    iget-object p1, p1, Lcom/coloros/settings/privacy/a/i$a;->c:[B

    .line 1169
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->b([B)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1170
    invoke-static {p1}, Lcom/coloros/settings/privacy/a/k;->d([B)Ljava/lang/String;

    move-result-object p1

    .line 1171
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v7, "checkScreenLockToken pwd = "

    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v3

    :goto_1
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 1173
    invoke-interface {v2, v6, v1, p1}, Lcom/coloros/settings/privacy/a/j$b;->onChecked(Z[BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 1183
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "checkScreenLockToken e = "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string p1, "checkToken fail"

    .line 1185
    invoke-static {v4, p1}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 1187
    invoke-interface {v2, v3, v0, p1}, Lcom/coloros/settings/privacy/a/j$b;->onChecked(Z[BLjava/lang/String;)V

    return-void

    :cond_5
    :goto_2
    const-string p1, "checkScreenLockToken Illegal"

    .line 1144
    invoke-static {v4, p1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 1146
    invoke-interface {v2, v3, v0, v0}, Lcom/coloros/settings/privacy/a/j$b;->onChecked(Z[BLjava/lang/String;)V

    return-void

    .line 305
    :cond_6
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    const-string p1, "FingerprintResetPassword"

    const-string v0, "fingerprintManager is null"

    .line 306
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 104
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 106
    invoke-static {p0}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;)Z

    .line 107
    invoke-static {p0}, Lcom/coloros/settings/feature/fingerprint/utils/FingerprintUtils;->isOpticalFingerPrint(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mIsOpticalFingerPrint:Z

    .line 108
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mIsOpticalFingerPrint:Z

    if-eqz p1, :cond_0

    const p1, 0x7f0602c6

    .line 109
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mOpticalColor:I

    .line 110
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mOpticalColor:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 111
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    iget v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mOpticalColor:I

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 112
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x500

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    const p1, 0x7f0d0220

    .line 114
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->setContentView(I)V

    goto :goto_0

    :cond_0
    const p1, 0x7f0d0217

    .line 116
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->setContentView(I)V

    .line 118
    :goto_0
    iget-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mIsOpticalFingerPrint:Z

    invoke-direct {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->initToolbar(Z)V

    const p1, 0x7f0a0525

    .line 119
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptLarge:Landroid/widget/TextView;

    const p1, 0x7f0a0527

    .line 120
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mPromptSmall:Landroid/widget/TextView;

    .line 121
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    const p1, 0x7f0a025b

    .line 122
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mEnrollAnimationLayout:Lcom/coloros/settings/feature/fingerprint/view/EnrollAnimationLayout;

    .line 123
    new-instance p1, Lcom/android/settings/b/a;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-direct {p1, p0, p0, v0}, Lcom/android/settings/b/a;-><init>(Landroid/content/Context;Lcom/android/settings/b/a$a;I)V

    iput-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    .line 124
    iget-object p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    .line 1064
    iget-boolean p1, p1, Lcom/android/settings/b/a;->a:Z

    if-eqz p1, :cond_1

    .line 124
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->c(Landroid/app/Activity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    :cond_2
    const/4 p1, 0x0

    .line 127
    invoke-direct {p0, p1, p1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->updateTips(II)V

    .line 128
    new-instance v0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword$2;-><init>(Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;)V

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 142
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x0

    const-string v3, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {p0, v1, v0, v3, v2}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-string v0, "FingerprintResetPassword"

    const-string v1, "onCreate startListening "

    .line 145
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iput-boolean p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHasFinished:Z

    .line 147
    iput p1, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mCount:I

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 181
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0010

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroy()V
    .locals 3

    .line 213
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const-string v0, "FingerprintResetPassword"

    const-string v1, "onDestroy stopListening "

    .line 214
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 215
    iput-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHasFinished:Z

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 219
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "from_lock_screen"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 220
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oppo.settings.fingerprint.FingerprintResetPassword"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oppo.settings.permission.LOCK_PATTERN"

    .line 221
    invoke-virtual {p0, v0, v1}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 187
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a0253

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->finish()V

    .line 194
    :goto_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 199
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 200
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/b/a;->a(Z)V

    .line 201
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerCountdownTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 205
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    if-eqz v0, :cond_1

    const-string v0, "FingerprintResetPassword"

    const-string v1, "onPause stopListening "

    .line 206
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->c()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 168
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 169
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/b/a;->a(Z)V

    .line 170
    iget-boolean v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mIsOpticalFingerPrint:Z

    if-eqz v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mFingerprintUiHelper:Lcom/android/settings/b/a;

    invoke-virtual {v0}, Lcom/android/settings/b/a;->b()V

    .line 175
    invoke-direct {p0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->initCountDown()V

    return-void
.end method

.method public vibrateByUser([J)V
    .locals 2

    const/4 v0, 0x3

    .line 227
    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->c(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    const-string v0, "vibrator"

    .line 231
    invoke-virtual {p0, v0}, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    if-eqz p1, :cond_1

    .line 234
    iget-object v0, p0, Lcom/coloros/settings/feature/fingerprint/FingerprintResetPassword;->mVibrator:Landroid/os/Vibrator;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V

    :cond_1
    return-void
.end method
