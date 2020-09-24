.class public Lcom/android/settings/CryptKeeper;
.super Landroid/app/Activity;
.source "CryptKeeper.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/CryptKeeper$c;,
        Lcom/android/settings/CryptKeeper$a;,
        Lcom/android/settings/CryptKeeper$b;
    }
.end annotation


# instance fields
.field a:Landroid/os/PowerManager$WakeLock;

.field protected b:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Z

.field private h:Lcom/android/settings/widget/ImeAwareEditText;

.field private i:Lcom/android/internal/widget/LockPatternView;

.field private j:I

.field private k:I

.field private l:I

.field private final m:Ljava/lang/Runnable;

.field private final n:Ljava/lang/Runnable;

.field private final o:Landroid/os/Handler;

.field private p:Landroid/media/AudioManager;

.field private q:Landroid/app/StatusBarManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 86
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->g:Z

    .line 129
    iput v0, p0, Lcom/android/settings/CryptKeeper;->j:I

    .line 131
    iput v0, p0, Lcom/android/settings/CryptKeeper;->k:I

    const v0, 0x7f1208ff

    .line 132
    iput v0, p0, Lcom/android/settings/CryptKeeper;->l:I

    .line 142
    new-instance v0, Lcom/android/settings/CryptKeeper$1;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$1;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->m:Ljava/lang/Runnable;

    .line 152
    new-instance v0, Lcom/android/settings/CryptKeeper$2;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$2;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->n:Ljava/lang/Runnable;

    .line 321
    new-instance v0, Lcom/android/settings/CryptKeeper$3;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$3;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    .line 719
    new-instance v0, Lcom/android/settings/CryptKeeper$6;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$6;-><init>(Lcom/android/settings/CryptKeeper;)V

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->b:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;I)I
    .locals 0

    .line 86
    iput p1, p0, Lcom/android/settings/CryptKeeper;->l:I

    return p1
.end method

.method static synthetic a()Landroid/os/storage/IStorageManager;
    .locals 1

    .line 86
    invoke-static {}, Lcom/android/settings/CryptKeeper;->h()Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    return-object p0
.end method

.method private a(Landroid/view/View;)V
    .locals 3

    .line 715
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->b()V

    .line 716
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->m:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Landroid/view/View;)V
    .locals 0

    .line 86
    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Ljava/lang/Integer;)V
    .locals 5

    .line 5236
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_0

    .line 5237
    sget-object v1, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 5238
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->n:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 5239
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->n:Ljava/lang/Runnable;

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 5241
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 5242
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper;->g:Z

    .line 5245
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->g()V

    return-void

    :cond_1
    const v0, 0x7f0a0650

    .line 5247
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5249
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    rsub-int/lit8 p1, p1, 0x1e

    const/4 v3, 0x0

    if-ge p1, v1, :cond_2

    const v1, 0x7f12066f

    .line 5251
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5252
    new-array v4, v2, [Ljava/lang/CharSequence;

    .line 5253
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v3

    .line 5252
    invoke-static {v1, v4}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5254
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 5258
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/android/settings/CryptKeeper;->h()Landroid/os/storage/IStorageManager;

    move-result-object p1

    .line 5259
    invoke-interface {p1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5261
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "Error calling mount service "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "CryptKeeper"

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p1, 0x3

    if-ne v3, p1, :cond_3

    const p1, 0x7f120674

    .line 5265
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    if-ne v3, p1, :cond_4

    const p1, 0x7f120673

    .line 5267
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    const p1, 0x7f120672

    .line 5269
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 5273
    :goto_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    if-eqz p1, :cond_5

    .line 5274
    sget-object v0, Lcom/android/internal/widget/LockPatternView$DisplayMode;->Wrong:Lcom/android/internal/widget/LockPatternView$DisplayMode;

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setDisplayMode(Lcom/android/internal/widget/LockPatternView$DisplayMode;)V

    .line 5275
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    invoke-virtual {p1, v2}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 5279
    :cond_5
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz p1, :cond_6

    .line 5280
    invoke-virtual {p1, v2}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 5281
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1}, Lcom/android/settings/widget/ImeAwareEditText;->a()V

    .line 5282
    invoke-direct {p0, v2}, Lcom/android/settings/CryptKeeper;->b(Z)V

    :cond_6
    return-void
.end method

.method private a(Z)V
    .locals 3

    const v0, 0x7f0a024e

    .line 605
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0283

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const/4 v1, 0x0

    .line 609
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 610
    new-instance v2, Lcom/android/settings/CryptKeeper$5;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/CryptKeeper$5;-><init>(Lcom/android/settings/CryptKeeper;Z)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0650

    const v2, 0x7f0a06f9

    if-eqz p1, :cond_0

    .line 629
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f12065d

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 630
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f12065c

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v2, 0x7f120665

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 633
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x7f120664

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const p1, 0x7f0a00e8

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 639
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method static synthetic a(Lcom/android/settings/CryptKeeper;Z)Z
    .locals 0

    .line 86
    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->f:Z

    return p1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 2

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private b()V
    .locals 2

    const v0, 0x7f0a0650

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1204e6

    .line 231
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->b()V

    return-void
.end method

.method private final b(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 708
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->q:Landroid/app/StatusBarManager;

    const/high16 v0, 0x3270000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void

    .line 710
    :cond_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->q:Landroid/app/StatusBarManager;

    const/high16 v0, 0x3670000

    invoke-virtual {p1, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/CryptKeeper;)Ljava/lang/Runnable;
    .locals 0

    .line 86
    iget-object p0, p0, Lcom/android/settings/CryptKeeper;->n:Ljava/lang/Runnable;

    return-object p0
.end method

.method private c()Z
    .locals 2

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.android.settings.CryptKeeper.DEBUG_FORCE_VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private d()V
    .locals 3

    .line 466
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->e:Z

    const v1, 0x7f0d0131

    if-nez v0, :cond_6

    const-string v0, "error"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 472
    :cond_0
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 473
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "progress"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 476
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->c:Z

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const-string v0, "password"

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 536
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->d:Z

    if-nez v0, :cond_3

    .line 538
    new-instance v0, Lcom/android/settings/CryptKeeper$c;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/CryptKeeper$c;-><init>(Lcom/android/settings/CryptKeeper;B)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    const/4 v0, 0x1

    .line 539
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->d:Z

    :cond_3
    return-void

    .line 477
    :cond_4
    :goto_0
    new-instance v0, Lcom/android/settings/CryptKeeper$4;

    invoke-direct {v0, p0}, Lcom/android/settings/CryptKeeper$4;-><init>(Lcom/android/settings/CryptKeeper;)V

    new-array v1, v1, [Ljava/lang/Void;

    .line 535
    invoke-virtual {v0, v1}, Lcom/android/settings/CryptKeeper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 474
    :cond_5
    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->e()V

    return-void

    .line 467
    :cond_6
    :goto_2
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 468
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->f:Z

    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->a(Z)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    const/4 v0, 0x1

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->a(Z)V

    return-void
.end method

.method private e()V
    .locals 3

    const-string v0, "CryptKeeper"

    const-string v1, "Encryption progress screen initializing."

    .line 581
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_0

    const-string v1, "Acquiring wakelock."

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "power"

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    const/16 v2, 0x1a

    .line 585
    invoke-virtual {v1, v2, v0}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    .line 586
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_0
    const v0, 0x7f0a051a

    .line 589
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    const/4 v0, 0x0

    .line 591
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->b(Z)V

    .line 594
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->f()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->c:Z

    return v0
.end method

.method private f()V
    .locals 6

    const-string v0, "CryptKeeper"

    .line 644
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_progress()Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "error_partially_encrypted"

    .line 646
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 647
    invoke-direct {p0, v3}, Lcom/android/settings/CryptKeeper;->a(Z)V

    return-void

    :cond_0
    const v2, 0x7f12066a

    .line 652
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 656
    :try_start_0
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->c()Z

    move-result v4

    if-eqz v4, :cond_1

    const/16 v1, 0x32

    goto :goto_0

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 658
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Error parsing progress: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 660
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 663
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Encryption progress: "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    :try_start_1
    invoke-static {}, Landroid/sysprop/VoldProperties;->encrypt_time_remaining()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ltz v0, :cond_2

    add-int/lit8 v0, v0, 0x9

    .line 668
    div-int/lit8 v0, v0, 0xa

    mul-int/lit8 v0, v0, 0xa

    int-to-long v4, v0

    .line 669
    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f12066b

    .line 670
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v0

    :catch_1
    :cond_2
    const v0, 0x7f0a0650

    .line 676
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const/4 v4, 0x1

    if-eqz v0, :cond_3

    .line 678
    new-array v5, v4, [Ljava/lang/CharSequence;

    aput-object v1, v5, v3

    invoke-static {v2, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 682
    :cond_3
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 683
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method static synthetic f(Lcom/android/settings/CryptKeeper;)Z
    .locals 1

    const/4 v0, 0x1

    .line 86
    iput-boolean v0, p0, Lcom/android/settings/CryptKeeper;->e:Z

    return v0
.end method

.method private g()V
    .locals 2

    .line 691
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 692
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 694
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 695
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    :cond_1
    const v0, 0x7f0a0650

    .line 698
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120667

    .line 699
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->d()V

    return-void
.end method

.method private static h()Landroid/os/storage/IStorageManager;
    .locals 1

    const-string v0, "mount"

    .line 871
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 873
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->f()V

    return-void
.end method

.method private i()Landroid/telephony/TelephonyManager;
    .locals 1

    const-string v0, "phone"

    .line 994
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings/CryptKeeper;)V
    .locals 4

    .line 5364
    iget v0, p0, Lcom/android/settings/CryptKeeper;->j:I

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, -0x1

    .line 5365
    iput v0, p0, Lcom/android/settings/CryptKeeper;->j:I

    goto :goto_0

    .line 5366
    :cond_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->p:Landroid/media/AudioManager;

    if-eqz v0, :cond_1

    const/4 v1, 0x5

    const/16 v2, 0x64

    .line 5373
    :try_start_0
    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5375
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "notifyUser: Exception while playing sound: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeper"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5379
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5380
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5382
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5383
    iget v0, p0, Lcom/android/settings/CryptKeeper;->k:I

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    .line 5384
    iput v0, p0, Lcom/android/settings/CryptKeeper;->k:I

    return-void

    .line 5386
    :cond_2
    iget-object p0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_3
    return-void
.end method

.method private j()Landroid/telecom/TelecomManager;
    .locals 1

    const-string/jumbo v0, "telecom"

    .line 998
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings/CryptKeeper;)V
    .locals 1

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lcom/android/settings/CryptKeeper;->b(Z)V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/CryptKeeper;)I
    .locals 0

    .line 86
    iget p0, p0, Lcom/android/settings/CryptKeeper;->l:I

    return p0
.end method

.method static synthetic l(Lcom/android/settings/CryptKeeper;)V
    .locals 12

    const v0, 0x7f0a04b8

    .line 5749
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ImeAwareEditText;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    .line 5750
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_0

    .line 5751
    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 5752
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->requestFocus()Z

    .line 5754
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 5755
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 5756
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ImeAwareEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_0
    const v0, 0x7f0a03bc

    .line 5760
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/LockPatternView;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    .line 5761
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    if-eqz v0, :cond_1

    .line 5762
    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->b:Lcom/android/internal/widget/LockPatternView$OnPatternListener;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setOnPatternListener(Lcom/android/internal/widget/LockPatternView$OnPatternListener;)V

    .line 5766
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->i()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    const/16 v1, 0x8

    const v2, 0x7f0a0243

    const-string v3, "CryptKeeper"

    if-nez v0, :cond_2

    .line 5767
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v4, "Removing the emergency Call button"

    .line 5769
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5770
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0a06b8

    .line 5774
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v4, "input_method"

    .line 5775
    invoke-virtual {p0, v4}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodManager;

    const/4 v5, 0x0

    if-eqz v0, :cond_b

    .line 5831
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v6

    .line 5836
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v5

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x1

    if-eqz v8, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/view/inputmethod/InputMethodInfo;

    if-le v7, v9, :cond_4

    goto :goto_3

    .line 5840
    :cond_4
    invoke-virtual {v4, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v8

    .line 5842
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5848
    :cond_5
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    move v10, v5

    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/view/inputmethod/InputMethodSubtype;

    .line 5849
    invoke-virtual {v11}, Landroid/view/inputmethod/InputMethodSubtype;->isAuxiliary()Z

    move-result v11

    if-eqz v11, :cond_6

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 5853
    :cond_7
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-lez v8, :cond_3

    goto :goto_1

    :cond_8
    if-gt v7, v9, :cond_a

    const/4 v6, 0x0

    .line 5867
    invoke-virtual {v4, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-le v6, v9, :cond_9

    goto :goto_3

    :cond_9
    move v9, v5

    :cond_a
    :goto_3
    if-eqz v9, :cond_b

    .line 5778
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 5779
    new-instance v6, Lcom/android/settings/CryptKeeper$7;

    invoke-direct {v6, p0, v4}, Lcom/android/settings/CryptKeeper$7;-><init>(Lcom/android/settings/CryptKeeper;Landroid/view/inputmethod/InputMethodManager;)V

    invoke-virtual {v0, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5791
    :cond_b
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_c

    const-string v0, "Acquiring wakelock."

    .line 5792
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "power"

    .line 5793
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    if-eqz v0, :cond_c

    const/16 v4, 0x1a

    .line 5795
    invoke-virtual {v0, v4, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    .line 5796
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    const/16 v0, 0x60

    .line 5799
    iput v0, p0, Lcom/android/settings/CryptKeeper;->k:I

    .line 5804
    :cond_c
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->i:Lcom/android/internal/widget/LockPatternView;

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->g:Z

    if-nez v0, :cond_d

    .line 5805
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 5807
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    if-eqz v0, :cond_d

    .line 5808
    invoke-virtual {v0}, Lcom/android/settings/widget/ImeAwareEditText;->a()V

    .line 5942
    :cond_d
    invoke-virtual {p0, v2}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    if-eqz v0, :cond_10

    .line 5972
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "com.android.internal.R.bool.config_voice_capable"

    invoke-static {v3}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 5948
    invoke-virtual {v0, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 5949
    new-instance v1, Lcom/android/settings/CryptKeeper$8;

    invoke-direct {v1, p0}, Lcom/android/settings/CryptKeeper$8;-><init>(Lcom/android/settings/CryptKeeper;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5962
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->j()Landroid/telecom/TelecomManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_e

    const v1, 0x7f120671

    goto :goto_4

    :cond_e
    const v1, 0x7f120670

    .line 5968
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_5

    .line 5957
    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5814
    :cond_10
    :goto_5
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5815
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5818
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x480000

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/CryptKeeper;)Z
    .locals 0

    .line 86
    iget-boolean p0, p0, Lcom/android/settings/CryptKeeper;->g:Z

    return p0
.end method

.method static synthetic n(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->g()V

    return-void
.end method

.method static synthetic o(Lcom/android/settings/CryptKeeper;)V
    .locals 2

    .line 5976
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->j()Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 5977
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    .line 5978
    invoke-virtual {v0, p0}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V

    return-void

    .line 5986
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.EmergencyDialer.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10800000

    .line 5987
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/4 v1, 0x1

    .line 5989
    invoke-direct {p0, v1}, Lcom/android/settings/CryptKeeper;->b(Z)V

    .line 5990
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 401
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 404
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 405
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->c()Z

    move-result v2

    const-string v3, "CryptKeeper"

    const/4 v4, 0x1

    if-nez v2, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "trigger_restart_framework"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2036
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 2037
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/android/settings/CryptKeeper;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 2038
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Disabling component "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    .line 2039
    invoke-virtual {p1, v0, v1, v4}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->finish()V

    return-void

    .line 419
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    .line 420
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->setRequestedOrientation(I)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    const-string v0, "statusbar"

    .line 427
    invoke-virtual {p0, v0}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->q:Landroid/app/StatusBarManager;

    .line 428
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->q:Landroid/app/StatusBarManager;

    const/high16 v1, 0x3270000

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    if-eqz p1, :cond_3

    const-string v0, "cooldown"

    .line 431
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/CryptKeeper;->g:Z

    .line 2925
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->i()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode()I

    move-result p1

    if-ne p1, v4, :cond_4

    move p1, v4

    goto :goto_0

    :cond_4
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_5

    const-string p1, "Going into airplane mode."

    .line 2927
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2928
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    invoke-static {p1, v0, v4}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2929
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "state"

    .line 2930
    invoke-virtual {p1, v0, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2931
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/CryptKeeper;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    :cond_5
    const-string p1, "audio"

    .line 435
    invoke-virtual {p0, p1}, Lcom/android/settings/CryptKeeper;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/CryptKeeper;->p:Landroid/media/AudioManager;

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/CryptKeeper;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object p1

    .line 438
    instance-of v0, p1, Lcom/android/settings/CryptKeeper$b;

    if-eqz v0, :cond_6

    .line 439
    check-cast p1, Lcom/android/settings/CryptKeeper$b;

    .line 440
    iget-object p1, p1, Lcom/android/settings/CryptKeeper$b;->a:Landroid/os/PowerManager$WakeLock;

    iput-object p1, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    const-string p1, "Restoring wakelock from NonConfigurationInstanceState"

    .line 441
    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 565
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 567
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const-string v0, "CryptKeeper"

    const-string v1, "Releasing and destroying wakelock"

    .line 568
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    .line 570
    iput-object v0, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    :cond_0
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    const/4 v0, 0x6

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    return p3

    .line 882
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 884
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    return v1

    :cond_2
    const/4 v0, 0x0

    .line 889
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 893
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/ImeAwareEditText;->setEnabled(Z)V

    .line 894
    invoke-direct {p0, p3}, Lcom/android/settings/CryptKeeper;->b(Z)V

    .line 896
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x4

    if-lt p1, v0, :cond_3

    .line 897
    new-instance p1, Lcom/android/settings/CryptKeeper$a;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/CryptKeeper$a;-><init>(Lcom/android/settings/CryptKeeper;B)V

    new-array v0, v1, [Ljava/lang/String;

    aput-object p2, v0, p3

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 900
    :cond_3
    iget-object p1, p0, Lcom/android/settings/CryptKeeper;->h:Lcom/android/settings/widget/ImeAwareEditText;

    invoke-direct {p0, p1}, Lcom/android/settings/CryptKeeper;->a(Landroid/view/View;)V

    :goto_1
    return v1
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/16 p1, 0x14

    .line 3005
    iput p1, p0, Lcom/android/settings/CryptKeeper;->j:I

    const/4 p1, 0x0

    return p1
.end method

.method public onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .line 557
    new-instance v0, Lcom/android/settings/CryptKeeper$b;

    iget-object v1, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v0, v1}, Lcom/android/settings/CryptKeeper$b;-><init>(Landroid/os/PowerManager$WakeLock;)V

    const-string v1, "CryptKeeper"

    const-string v2, "Handing wakelock off to NonConfigurationInstanceState"

    .line 558
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 559
    iput-object v1, p0, Lcom/android/settings/CryptKeeper;->a:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 447
    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper;->g:Z

    const-string v1, "cooldown"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public onStart()V
    .locals 0

    .line 457
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 458
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper;->d()V

    return-void
.end method

.method public onStop()V
    .locals 2

    .line 545
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 546
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/CryptKeeper;->o:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    const/16 p1, 0x14

    .line 5005
    iput p1, p0, Lcom/android/settings/CryptKeeper;->j:I

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    const/16 p1, 0x14

    .line 4005
    iput p1, p0, Lcom/android/settings/CryptKeeper;->j:I

    const/4 p1, 0x0

    return p1
.end method
