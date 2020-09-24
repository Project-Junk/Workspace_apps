.class final Lcom/android/settings/l$b;
.super Ljava/lang/Object;
.source "TrustedCredentialsDialogBuilder.java"

# interfaces
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcolor/support/v7/app/AlertDialog;

.field b:[Lcom/android/settings/TrustedCredentialsSettings$c;

.field private final c:Landroid/app/Activity;

.field private final d:Landroid/app/admin/DevicePolicyManager;

.field private final e:Landroid/os/UserManager;

.field private final f:Lcom/android/settings/l$a;

.field private final g:Landroid/widget/LinearLayout;

.field private h:I

.field private i:Landroid/widget/Button;

.field private j:Landroid/widget/Button;

.field private k:Z

.field private l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/android/settings/l$a;)V
    .locals 1

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 112
    iput v0, p0, Lcom/android/settings/l$b;->h:I

    const/4 v0, 0x0

    .line 117
    new-array v0, v0, [Lcom/android/settings/TrustedCredentialsSettings$c;

    iput-object v0, p0, Lcom/android/settings/l$b;->b:[Lcom/android/settings/TrustedCredentialsSettings$c;

    const/4 v0, 0x0

    .line 118
    iput-object v0, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    .line 121
    iput-object p1, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    .line 122
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/l$b;->d:Landroid/app/admin/DevicePolicyManager;

    .line 123
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/l$b;->e:Landroid/os/UserManager;

    .line 124
    iput-object p2, p0, Lcom/android/settings/l$b;->f:Lcom/android/settings/l$a;

    .line 126
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    .line 127
    iget-object p1, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    return-void
.end method

.method private a(ILjava/lang/CharSequence;)Landroid/widget/Button;
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/settings/l$b;->a:Lcolor/support/v7/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcolor/support/v7/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 275
    iget-object v0, p0, Lcom/android/settings/l$b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0, p1}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    .line 276
    invoke-virtual {p1, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 277
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method private a(Lcom/android/settings/TrustedCredentialsSettings$c;)Landroid/widget/LinearLayout;
    .locals 5

    .line 296
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 297
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 298
    iget-object v2, p0, Lcom/android/settings/l$b;->f:Lcom/android/settings/l$a;

    invoke-interface {v2, p1}, Lcom/android/settings/l$a;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 301
    new-instance v3, Landroid/net/http/SslCertificate;

    invoke-direct {v3, v2}, Landroid/net/http/SslCertificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 302
    iget-object v2, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-virtual {v3, v2}, Landroid/net/http/SslCertificate;->inflateCertificateView(Landroid/content/Context;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 303
    invoke-virtual {v3}, Landroid/net/http/SslCertificate;->getIssuedTo()Landroid/net/http/SslCertificate$DName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/http/SslCertificate$DName;->getCName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 309
    new-instance p1, Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 311
    :cond_1
    iget-object p1, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v2, 0x7f0d01a7

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f0a01ad

    .line 312
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const/4 v3, 0x0

    .line 313
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0a01ac

    .line 314
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 315
    new-instance v4, Lcom/android/settings/-$$Lambda$l$b$zoxjDm8iSOF5VrUzK1uIEq-wHMk;

    invoke-direct {v4, p0, v1, v0, v2}, Lcom/android/settings/-$$Lambda$l$b$zoxjDm8iSOF5VrUzK1uIEq-wHMk;-><init>(Lcom/android/settings/l$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 352
    new-instance v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {v1, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    .line 353
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 356
    invoke-virtual {v1, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move p1, v3

    .line 358
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p1, v2, :cond_3

    .line 359
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    if-nez p1, :cond_2

    move v4, v3

    goto :goto_2

    :cond_2
    const/16 v4, 0x8

    .line 361
    :goto_2
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    return-object v1
.end method

.method static synthetic a(Lcom/android/settings/l$b;)Landroid/widget/LinearLayout;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private a()V
    .locals 4

    .line 163
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 164
    iget-object v1, p0, Lcom/android/settings/l$b;->f:Lcom/android/settings/l$a;

    .line 1932
    iget v2, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 164
    new-instance v3, Lcom/android/settings/-$$Lambda$l$b$EVarCa-afbXoBgxBmReRuxDRjw8;

    invoke-direct {v3, p0}, Lcom/android/settings/-$$Lambda$l$b$EVarCa-afbXoBgxBmReRuxDRjw8;-><init>(Lcom/android/settings/l$b;)V

    invoke-interface {v1, v2, v3}, Lcom/android/settings/l$a;->a(ILjava/util/function/IntConsumer;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/l$b;->d:Landroid/app/admin/DevicePolicyManager;

    .line 1936
    iget-object v2, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    .line 2932
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    const/4 v3, 0x1

    .line 166
    invoke-virtual {v1, v2, v0, v3}, Landroid/app/admin/DevicePolicyManager;->approveCaCert(Ljava/lang/String;IZ)Z

    .line 167
    invoke-direct {p0}, Lcom/android/settings/l$b;->c()V

    :cond_0
    return-void
.end method

.method private a(I)V
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/android/settings/l$b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/l$b;->k:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 3932
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    if-ne v0, p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/settings/l$b;->a()V

    :cond_0
    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    .line 377
    new-instance v0, Lcom/android/settings/l$b$2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/l$b$2;-><init>(Lcom/android/settings/l$b;Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/android/settings/l$b;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/l$b;Landroid/view/View;)V
    .locals 1

    .line 8397
    iput-object p1, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    .line 8398
    iget-object v0, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 8399
    iget-object v0, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 8401
    iget-object p1, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/settings/l$b$3;

    invoke-direct {v0, p0}, Lcom/android/settings/l$b$3;-><init>(Lcom/android/settings/l$b;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private a(Ljava/lang/Runnable;)V
    .locals 3

    .line 387
    iget-object v0, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 388
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    .line 389
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    const v2, 0x10c000f

    .line 390
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 392
    invoke-virtual {v0, p1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    .line 393
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method private static synthetic a(Ljava/util/ArrayList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    const/4 p1, 0x0

    move p2, p1

    .line 323
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p2, p4, :cond_1

    .line 324
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Landroid/view/View;

    if-ne p2, p3, :cond_0

    move p5, p1

    goto :goto_1

    :cond_0
    const/16 p5, 0x8

    :goto_1
    invoke-virtual {p4, p5}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private synthetic a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 4

    .line 316
    new-instance p4, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p4, v0}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    .line 317
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 318
    new-instance v1, Lcom/color/support/widget/popupwindow/PopupListItem;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Lcom/color/support/widget/popupwindow/PopupListItem;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 320
    :cond_0
    new-instance p1, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;

    iget-object v0, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {p1, v0}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;-><init>(Landroid/content/Context;)V

    .line 321
    invoke-virtual {p1, p4}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setItemList(Ljava/util/List;)V

    .line 322
    new-instance p4, Lcom/android/settings/-$$Lambda$l$b$n7UQwBCmQWcW7R6vvDkAjRIY_qo;

    invoke-direct {p4, p2}, Lcom/android/settings/-$$Lambda$l$b$n7UQwBCmQWcW7R6vvDkAjRIY_qo;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p1, p4}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 327
    invoke-virtual {p1, v2}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->setDismissTouchOutside(Z)V

    .line 328
    invoke-virtual {p1, p3}, Lcom/color/support/widget/popupwindow/ColorPopupListWindow;->show(Landroid/view/View;)V

    return-void
.end method

.method private static b(Lcom/android/settings/TrustedCredentialsSettings$c;)I
    .locals 1

    .line 369
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

.method private b()Lcom/android/settings/TrustedCredentialsSettings$c;
    .locals 3

    .line 207
    iget v0, p0, Lcom/android/settings/l$b;->h:I

    iget-object v1, p0, Lcom/android/settings/l$b;->b:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aget-object v0, v1, v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/l$b;)Lcom/android/settings/l$a;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/l$b;->f:Lcom/android/settings/l$a;

    return-object p0
.end method

.method private b(I)Z
    .locals 2

    .line 231
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 232
    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 235
    :cond_0
    iget-object v1, p0, Lcom/android/settings/l$b;->e:Landroid/os/UserManager;

    invoke-virtual {v1, p1}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    return p1

    .line 239
    :cond_1
    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p1

    return p1
.end method

.method private c()V
    .locals 2

    .line 211
    iget v0, p0, Lcom/android/settings/l$b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/l$b;->h:I

    .line 213
    :goto_0
    iget v0, p0, Lcom/android/settings/l$b;->h:I

    iget-object v1, p0, Lcom/android/settings/l$b;->b:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    if-nez v0, :cond_0

    .line 214
    iget v0, p0, Lcom/android/settings/l$b;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/l$b;->h:I

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/settings/l$b;->h:I

    iget-object v1, p0, Lcom/android/settings/l$b;->b:[Lcom/android/settings/TrustedCredentialsSettings$c;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 218
    iget-object v0, p0, Lcom/android/settings/l$b;->a:Lcolor/support/v7/app/AlertDialog;

    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->dismiss()V

    return-void

    .line 222
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/l$b;->f()V

    .line 223
    invoke-direct {p0}, Lcom/android/settings/l$b;->d()V

    .line 224
    invoke-direct {p0}, Lcom/android/settings/l$b;->e()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/l$b;)V
    .locals 0

    .line 101
    invoke-direct {p0}, Lcom/android/settings/l$b;->c()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/l$b;)Landroid/view/View;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    return-object p0
.end method

.method private d()V
    .locals 6

    .line 243
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 4932
    iget v1, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 245
    invoke-direct {p0, v1}, Lcom/android/settings/l$b;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/l$b;->d:Landroid/app/admin/DevicePolicyManager;

    .line 4936
    iget-object v4, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->c:Ljava/lang/String;

    .line 5932
    iget v5, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 246
    invoke-virtual {v1, v4, v5}, Landroid/app/admin/DevicePolicyManager;->isCaCertApproved(Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/l$b;->k:Z

    .line 248
    iget-object v1, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    .line 6932
    iget v0, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 249
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    const/4 v4, 0x0

    .line 7038
    invoke-static {v1, v4, v0}, Lcom/android/settingslib/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Lcom/android/settingslib/g$a;

    move-result-object v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    .line 252
    :goto_1
    iget-object v0, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    if-nez v2, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/l$b;->k:Z

    if-eqz v1, :cond_2

    const v1, 0x7f121721

    goto :goto_2

    :cond_2
    const v1, 0x104000a

    :goto_2
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, -0x1

    .line 255
    invoke-direct {p0, v1, v0}, Lcom/android/settings/l$b;->a(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/l$b;->i:Landroid/widget/Button;

    return-void
.end method

.method static synthetic e(Lcom/android/settings/l$b;)Landroid/app/Activity;
    .locals 0

    .line 101
    iget-object p0, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    return-object p0
.end method

.method private e()V
    .locals 4

    .line 259
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/android/settings/l$b;->e:Landroid/os/UserManager;

    new-instance v2, Landroid/os/UserHandle;

    .line 7932
    iget v3, v0, Lcom/android/settings/TrustedCredentialsSettings$c;->a:I

    .line 262
    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    const-string v3, "no_config_credentials"

    .line 260
    invoke-virtual {v1, v3, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 263
    iget-object v2, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settings/l$b;->b(Lcom/android/settings/TrustedCredentialsSettings$c;)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v2, -0x2

    .line 264
    invoke-direct {p0, v2, v0}, Lcom/android/settings/l$b;->a(ILjava/lang/CharSequence;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/l$b;->j:Landroid/widget/Button;

    .line 265
    iget-object v0, p0, Lcom/android/settings/l$b;->j:Landroid/widget/Button;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    return-void
.end method

.method private f()V
    .locals 2

    .line 283
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object v0

    .line 284
    invoke-direct {p0, v0}, Lcom/android/settings/l$b;->a(Lcom/android/settings/TrustedCredentialsSettings$c;)Landroid/widget/LinearLayout;

    move-result-object v0

    .line 287
    iget-object v1, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    if-nez v1, :cond_0

    .line 288
    iput-object v0, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    .line 289
    iget-object v0, p0, Lcom/android/settings/l$b;->g:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/android/settings/l$b;->l:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void

    .line 291
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/l$b;->a(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic lambda$EVarCa-afbXoBgxBmReRuxDRjw8(Lcom/android/settings/l$b;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/l$b;->a(I)V

    return-void
.end method

.method public static synthetic lambda$n7UQwBCmQWcW7R6vvDkAjRIY_qo(Ljava/util/ArrayList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settings/l$b;->a(Ljava/util/ArrayList;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public static synthetic lambda$zoxjDm8iSOF5VrUzK1uIEq-wHMk(Lcom/android/settings/l$b;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/l$b;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/android/settings/l$b;->i:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 148
    iget-boolean p1, p0, Lcom/android/settings/l$b;->k:Z

    if-eqz p1, :cond_0

    .line 149
    invoke-direct {p0}, Lcom/android/settings/l$b;->a()V

    return-void

    .line 1159
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/l$b;->c()V

    return-void

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/settings/l$b;->j:Landroid/widget/Button;

    if-ne p1, v0, :cond_3

    .line 1172
    invoke-direct {p0}, Lcom/android/settings/l$b;->b()Lcom/android/settings/TrustedCredentialsSettings$c;

    move-result-object p1

    .line 1173
    new-instance v0, Lcom/android/settings/l$b$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/l$b$1;-><init>(Lcom/android/settings/l$b;Lcom/android/settings/TrustedCredentialsSettings$c;)V

    .line 1180
    invoke-virtual {p1}, Lcom/android/settings/TrustedCredentialsSettings$c;->a()Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/4 p1, -0x1

    .line 1182
    invoke-interface {v0, v1, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void

    .line 1188
    :cond_2
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/l$b;->c:Landroid/app/Activity;

    invoke-direct {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f12171d

    .line 1189
    invoke-virtual {p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x1040013

    .line 1190
    invoke-virtual {p1, v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x1040009

    .line 1191
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1192
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->show()Lcolor/support/v7/app/AlertDialog;

    :cond_3
    return-void
.end method

.method public final onShow(Landroid/content/DialogInterface;)V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/l$b;->c()V

    return-void
.end method
