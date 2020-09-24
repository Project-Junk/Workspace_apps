.class public abstract Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConfirmAbstractPrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/TextView;

.field protected c:Landroid/widget/TextView;

.field protected d:I

.field private e:Landroid/view/View;

.field private f:Lcom/coloros/settings/privacy/a/g;

.field private g:Lcom/coloros/settings/privacy/a/g$d;

.field private h:Lcom/coloros/settings/privacy/a;

.field private i:Landroid/os/CountDownTimer;

.field private j:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->j:Z

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;I)V
    .locals 2

    .line 4385
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "onTimeoutFinished timeoutState = "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAbstractPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    .line 4387
    invoke-virtual {p0, p1, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    return-void

    .line 4389
    :cond_0
    iget-object p0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    const-string p1, ""

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Ljava/lang/String;)V
    .locals 3

    .line 3185
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->c()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$2;

    invoke-direct {v2, p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;)V

    .line 3294
    iget p0, v1, Lcom/coloros/settings/privacy/a/g$d;->a:I

    .line 3295
    iget-object v1, v1, Lcom/coloros/settings/privacy/a/g$d;->b:[B

    .line 3296
    invoke-virtual {v0, p0, p1, v2, v1}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;[B)V

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Z[B)V
    .locals 1

    .line 4195
    new-instance v0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;

    invoke-direct {v0, p0, p1, p2}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$3;-><init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Z[B)V

    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private h()I
    .locals 2
    .annotation build Landroidx/annotation/StringRes;
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->d()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const v0, 0x7f120caf

    return v0

    :cond_0
    const v0, 0x7f1210dd

    return v0
.end method


# virtual methods
.method protected final a(Z)I
    .locals 7

    .line 310
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    .line 311
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    iget v0, v0, Lcom/coloros/settings/privacy/a/g$d;->d:I

    mul-int/lit16 v0, v0, 0x3e8

    const-wide/16 v1, 0x0

    if-lez v0, :cond_0

    int-to-long v3, v0

    const/4 v0, 0x4

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->j()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    const/4 v0, 0x5

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->k()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    const/4 v0, 0x6

    goto :goto_0

    :cond_2
    const/4 v0, 0x7

    move-wide v3, v1

    .line 322
    :goto_0
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "updateCount timeLeft = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, "; timeoutState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "; isSetStateToInitIfNoTimeLeft = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ConfirmAbstractPrivacy"

    invoke-static {v6, v5}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->i:Landroid/os/CountDownTimer;

    if-eqz v5, :cond_3

    .line 324
    invoke-virtual {v5}, Landroid/os/CountDownTimer;->cancel()V

    :cond_3
    cmp-long v1, v3, v1

    if-lez v1, :cond_4

    .line 328
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g()V

    .line 329
    new-instance p1, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;

    invoke-direct {p1, p0, v0, v3, v4}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$a;-><init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;IJ)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->i:Landroid/os/CountDownTimer;

    .line 330
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->i:Landroid/os/CountDownTimer;

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    goto :goto_1

    :cond_4
    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 333
    invoke-virtual {p0, p1, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    :cond_5
    :goto_1
    return v0
.end method

.method protected abstract a()V
.end method

.method protected final a(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    const v0, 0x7f0a070a

    .line 1125
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcolor/support/v7/widget/Toolbar;

    const-string v1, ""

    .line 1126
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v1, 0x1

    .line 1127
    invoke-virtual {v0, v1}, Lcolor/support/v7/widget/Toolbar;->setIsTitleCenterStyle(Z)V

    .line 1128
    invoke-virtual {v0}, Lcolor/support/v7/widget/Toolbar;->hideDivider()V

    .line 1129
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 1130
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1132
    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 1134
    :cond_0
    invoke-static {p0, v2, v1}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;ZZ)V

    .line 111
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/coloros/settings/utils/al;->b(Landroid/content/Context;Landroid/view/View;)V

    .line 2118
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 2119
    instance-of v0, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v0, :cond_1

    .line 2120
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const v0, 0x7f0804bb

    invoke-virtual {p1, v0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 2138
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050063

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const p1, 0x7f0a020e

    .line 2139
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 2141
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method

.method protected a(II)V
    .locals 6

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "confirmState = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", remainSeconds = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ConfirmAbstractPrivacy"

    invoke-static {v1, v0}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    iput p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->d:I

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    const/4 v1, 0x5

    if-eq p1, v1, :cond_0

    const/4 v1, 0x6

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 246
    :cond_0
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 247
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(I)V

    .line 248
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0, p2}, Lcom/coloros/settings/privacy/a;->a(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    .line 240
    :cond_1
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100041

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v3, v4, p2, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 235
    :cond_2
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 236
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 237
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Z)I

    return-void

    .line 227
    :cond_3
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 228
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 229
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a:Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 230
    iget-object p1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b:Landroid/widget/TextView;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 2

    .line 176
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 181
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 172
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected abstract b()I
.end method

.method protected final c()Lcom/coloros/settings/privacy/a/g$d;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public final e()V
    .locals 2

    .line 299
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string v1, "oppo.intent.action.FINISH_PRIVACY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    invoke-static {p0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    :cond_0
    return-void
.end method

.method protected final f()Z
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->e:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()V
    .locals 3

    .line 344
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ConfirmAbstractPrivacy"

    const-string v1, "switchToPasswordVerify"

    .line 345
    invoke-static {v0, v1}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    const-string v1, "ConfirmBiometricInfo"

    const-string v2, "hideLayout"

    .line 2238
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 2239
    iget-object v1, v0, Lcom/coloros/settings/privacy/a;->a:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2240
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->i()V

    .line 2241
    iget-boolean v1, v0, Lcom/coloros/settings/privacy/a;->p:Z

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    .line 347
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->e:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 267
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p3, p1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 270
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void

    :cond_0
    const-string p1, "ConfirmAbstractPrivacy"

    const-string p2, "reset password fail"

    .line 272
    invoke-static {p1, p2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 294
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->e()V

    .line 295
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->c:Landroid/widget/TextView;

    if-ne p1, v0, :cond_0

    .line 259
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 260
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/privacy/ResetGenericPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    .line 261
    invoke-virtual {p0, p1, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 75
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 76
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->setContentView(I)V

    const v0, 0x7f0a04bd

    .line 77
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->e:Landroid/view/View;

    .line 78
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    .line 79
    new-instance v0, Lcom/coloros/settings/privacy/a;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a;-><init>(Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    .line 80
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->e()V

    .line 81
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a()V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Z)I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 84
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g()V

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->f()V

    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 95
    invoke-virtual {p0, p1, p1}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(II)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 279
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 280
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->i:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 281
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 282
    iput-object v1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->i:Landroid/os/CountDownTimer;

    .line 284
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->h()V

    .line 285
    iput-object v1, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 165
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 166
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    .line 2221
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ConfirmBiometricInfo"

    const-string v2, "onPause"

    .line 2224
    invoke-static {v1, v2}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 2225
    iput-boolean v1, v0, Lcom/coloros/settings/privacy/a;->h:Z

    .line 2226
    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->i()V

    .line 2227
    iget-boolean v2, v0, Lcom/coloros/settings/privacy/a;->p:Z

    invoke-virtual {v0, v2, v1}, Lcom/coloros/settings/privacy/a;->a(ZZ)V

    :cond_0
    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->j:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 148
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 150
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    .line 151
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->g:Lcom/coloros/settings/privacy/a/g$d;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g$d;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->finish()V

    return-void

    .line 156
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->j:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 157
    invoke-virtual {p0, v0}, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->a(Z)I

    :cond_1
    const/4 v0, 0x0

    .line 159
    iput-boolean v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->j:Z

    .line 160
    iget-object v0, p0, Lcom/coloros/settings/privacy/ConfirmAbstractPrivacy;->h:Lcom/coloros/settings/privacy/a;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a;->g()V

    return-void
.end method
