.class final Lcom/coloros/settings/feature/security/a$b;
.super Ljava/lang/Object;
.source "ColorTrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/feature/security/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/app/Dialog;

.field private final c:Landroid/app/admin/DevicePolicyManager;

.field private final d:Landroid/os/UserManager;

.field private final e:Lcom/coloros/settings/feature/security/a$a;

.field private final f:Landroid/widget/LinearLayout;

.field private g:I

.field private h:Landroid/widget/Button;

.field private i:Landroid/widget/Button;

.field private j:Z

.field private k:[Lcom/android/settings/TrustedCredentialsSettings$c;

.field private l:Landroid/view/View;


# direct methods
.method static synthetic a(Lcom/android/settings/TrustedCredentialsSettings$c;)I
    .locals 1

    .line 7475
    invoke-virtual {p0}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7944
    iget-boolean p0, p0, Lcom/android/settings/TrustedCredentialsSettings$c;->f:Z

    if-eqz p0, :cond_0

    const p0, 0x7f12171c

    return p0

    :cond_0
    const p0, 0x7f12171a

    return p0

    :cond_1
    const p0, 0x7f12171e

    return p0
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/a$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coloros/settings/feature/security/a$b;->f:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 483
    new-instance v0, Lcom/coloros/settings/feature/security/a$b$5;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/a$b$5;-><init>(Lcom/coloros/settings/feature/security/a$b;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/a$b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/a$b;I)V
    .locals 1

    .line 8296
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/coloros/settings/feature/security/a$b;->j:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 8297
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 8932
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    if-ne v0, p1, :cond_0

    .line 8299
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/a$b;->c()V

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/feature/security/a$b;Landroid/view/View;)V
    .locals 1

    .line 9503
    iput-object p1, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    .line 9504
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 9505
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->f:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 9507
    iget-object p1, p0, Lcom/coloros/settings/feature/security/a$b;->f:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/coloros/settings/feature/security/a$b$6;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/security/a$b$6;-><init>(Lcom/coloros/settings/feature/security/a$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 493
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 494
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 495
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    const v2, 0x10c000f

    .line 496
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 498
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 499
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private a(I)Z
    .locals 2

    .line 328
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 329
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 332
    :cond_0
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->d:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 336
    :cond_1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    return p1
.end method

.method private b(Lcom/android/settings/TrustedCredentialsSettings$c;)Landroid/widget/LinearLayout;
    .locals 5

    .line 399
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 400
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 401
    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->e:Lcom/coloros/settings/feature/security/a$a;

    invoke-interface {v2, p1}, Lcom/coloros/settings/feature/security/a$a;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 403
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 404
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 405
    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 406
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 432
    :cond_0
    new-instance p1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    const v3, 0x7f0d023b

    const v4, 0x7f0a01ae

    invoke-direct {p1, v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 435
    new-instance v1, Landroid/widget/ListView;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    .line 436
    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    const v3, 0x106000d

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setBackgroundColor(I)V

    .line 437
    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setSelector(I)V

    .line 438
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const/4 p1, 0x0

    .line 439
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 440
    invoke-virtual {v1, p1}, Landroid/widget/ListView;->setVerticalScrollBarEnabled(Z)V

    .line 441
    new-instance v2, Lcom/coloros/settings/feature/security/a$b$4;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/feature/security/a$b$4;-><init>(Lcom/coloros/settings/feature/security/a$b;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 458
    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-direct {v2, v3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    .line 459
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 460
    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 461
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-static {v1}, Lcom/coloros/settings/utils/al;->X(Landroid/content/Context;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, p1

    .line 462
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 463
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-nez v1, :cond_1

    move v4, p1

    goto :goto_2

    :cond_1
    const/16 v4, 0x8

    .line 465
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 467
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 470
    invoke-virtual {v2, p1, p1, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-object v2
.end method

.method static synthetic b(Lcom/coloros/settings/feature/security/a$b;)Lcom/coloros/settings/feature/security/a$a;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coloros/settings/feature/security/a$b;->e:Lcom/coloros/settings/feature/security/a$a;

    return-object p0
.end method

.method static synthetic c(Lcom/coloros/settings/feature/security/a$b;)Landroid/view/View;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    return-object p0
.end method

.method private c()V
    .locals 4

    .line 232
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 233
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->e:Lcom/coloros/settings/feature/security/a$a;

    .line 1932
    iget v2, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 233
    new-instance v3, Lcom/coloros/settings/feature/security/a$b$1;

    invoke-direct {v3, p0}, Lcom/coloros/settings/feature/security/a$b$1;-><init>(Lcom/coloros/settings/feature/security/a$b;)V

    invoke-interface {v1, v2, v3}, Lcom/coloros/settings/feature/security/a$a;->a(ILcom/coloros/settings/feature/security/a$c;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 239
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->c:Landroid/app/admin/DevicePolicyManager;

    .line 1936
    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    .line 2932
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    const/4 v3, 0x1

    .line 239
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 240
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->b()V

    :cond_0
    return-void
.end method

.method static synthetic d(Lcom/coloros/settings/feature/security/a$b;)Landroid/app/Activity;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 340
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 341
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 3932
    iget v1, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 342
    invoke-direct {p0, v1}, Lcom/coloros/settings/feature/security/a$b;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->c:Landroid/app/admin/DevicePolicyManager;

    .line 3936
    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    .line 4932
    iget v5, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 343
    invoke-virtual {v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/coloros/settings/feature/security/a$b;->j:Z

    .line 5932
    iget v1, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    const/16 v4, -0x2710

    const/4 v5, 0x0

    if-ne v1, v4, :cond_1

    move-object v0, v5

    goto :goto_1

    .line 6932
    :cond_1
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 349
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 351
    :goto_1
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    .line 7038
    invoke-static {v1, v5, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    .line 355
    :goto_2
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    if-nez v2, :cond_3

    iget-boolean v1, p0, Lcom/coloros/settings/feature/security/a$b;->j:Z

    if-eqz v1, :cond_3

    const v1, 0x7f121721

    goto :goto_3

    :cond_3
    const v1, 0x7f120f84

    :goto_3
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    .line 358
    iput-object v5, p0, Lcom/coloros/settings/feature/security/a$b;->h:Landroid/widget/Button;

    return-void
.end method

.method private e()V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 387
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/a$b;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 390
    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    if-nez v1, :cond_0

    .line 391
    iput-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    .line 392
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->f:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 394
    :cond_0
    invoke-direct {p0, v0}, Lcom/coloros/settings/feature/security/a$b;->a(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method final a()Lcom/android/settings/TrustedCredentialsSettings$c;
    .locals 3

    .line 304
    iget v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->k:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()V
    .locals 2

    .line 308
    iget v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    .line 310
    :goto_0
    iget v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->k:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 311
    iget v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    goto :goto_0

    .line 314
    :cond_0
    iget v0, p0, Lcom/coloros/settings/feature/security/a$b;->g:I

    iget-object v1, p0, Lcom/coloros/settings/feature/security/a$b;->k:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 315
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    return-void

    .line 319
    :cond_1
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/a$b;->e()V

    .line 320
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/a$b;->d()V

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->h:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 217
    iget-boolean p1, p0, Lcom/coloros/settings/feature/security/a$b;->j:Z

    if-eqz p1, :cond_0

    .line 218
    invoke-direct {p0}, Lcom/coloros/settings/feature/security/a$b;->c()V

    return-void

    .line 1228
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->b()V

    return-void

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/feature/security/a$b;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 1274
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->a()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    .line 1275
    new-instance v0, Lcom/coloros/settings/feature/security/a$b$3;

    invoke-direct {v0, p0, p1}, Lcom/coloros/settings/feature/security/a$b$3;-><init>(Lcom/coloros/settings/feature/security/a$b;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 1282
    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 1284
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 1286
    :cond_2
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/coloros/settings/feature/security/a$b;->a:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12171d

    .line 1287
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x1040013

    .line 1288
    invoke-virtual {p1, v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    .line 1289
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1290
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 211
    invoke-virtual {p0}, Lcom/coloros/settings/feature/security/a$b;->b()V

    return-void
.end method
