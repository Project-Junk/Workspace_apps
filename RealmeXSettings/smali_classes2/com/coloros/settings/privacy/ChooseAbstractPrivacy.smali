.class public abstract Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ChooseAbstractPrivacy.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected a:I

.field protected b:[B

.field protected c:I

.field protected d:I

.field protected e:Ljava/lang/String;

.field protected f:Lcom/coloros/settings/privacy/a/g;

.field protected g:Landroid/widget/TextView;

.field protected h:Landroid/widget/TextView;

.field protected i:Landroid/widget/TextView;

.field protected j:Landroid/widget/TextView;

.field protected k:Landroid/widget/TextView;

.field private m:Lcom/coloros/settings/privacy/a/g$d;

.field private n:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 82
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 85
    sput-object v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fd2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fd4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fad

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fac

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    const/4 v1, 0x4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v2, 0x7f120fd3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 96
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->n:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Lcom/coloros/settings/privacy/a/g$d;)Lcom/coloros/settings/privacy/a/g$d;
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->m:Lcom/coloros/settings/privacy/a/g$d;

    return-object p1
.end method

.method private synthetic a(Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 5

    .line 393
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 p2, 0x0

    move v0, p2

    .line 395
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 396
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    if-ne p3, v0, :cond_6

    .line 398
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 399
    iget p3, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    const-string v0, "confirm_challenge"

    const-string v1, "password_quality_type"

    const-string v2, "choose_password_type"

    const/4 v3, 0x4

    if-ne p3, v3, :cond_4

    .line 400
    iget-object p2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b:[B

    .line 2421
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 2422
    iget v4, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    invoke-virtual {p3, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p2, :cond_0

    .line 2424
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 2426
    :cond_0
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p2, 0x1

    if-eq p1, p2, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    if-eq p1, v3, :cond_2

    const/4 p2, 0x5

    if-eq p1, p2, :cond_1

    goto :goto_1

    .line 2429
    :cond_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChoosePatternPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2430
    invoke-virtual {p0, p3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2439
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChooseComplexPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2440
    invoke-virtual {p0, p3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 2434
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-class p2, Lcom/coloros/settings/privacy/ChooseNumberPrivacy;

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p1, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 2435
    invoke-virtual {p0, p3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->startActivity(Landroid/content/Intent;)V

    .line 401
    :goto_1
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    return-void

    .line 404
    :cond_4
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 405
    iget v3, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    invoke-virtual {p3, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 406
    iget-object v2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b:[B

    if-eqz v2, :cond_5

    .line 407
    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 409
    :cond_5
    invoke-virtual {p3, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 410
    invoke-virtual {p0, p2, p3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->setResult(ILandroid/content/Intent;)V

    .line 411
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    return-void

    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private b()V
    .locals 3

    .line 224
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120ffc

    .line 225
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$5;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$5;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V

    .line 226
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$4;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$4;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V

    const v2, 0x7f120ffd

    .line 233
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$3;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$3;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V

    const v2, 0x7f120ffe

    .line 240
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object v0

    .line 247
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog;->show()V

    .line 248
    invoke-static {v0}, Lcom/coloros/settings/utils/an;->a(Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic lambda$wpZPKOEPBxMVkzeHEZdwQ5zOP1Y(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Ljava/util/Map;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(Ljava/util/Map;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method protected abstract a()I
.end method

.method protected a(ILjava/lang/String;)V
    .locals 5

    .line 253
    iput p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->d:I

    .line 254
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->d:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_5

    .line 255
    iput-object p2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->e:Ljava/lang/String;

    .line 256
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/4 v3, 0x4

    if-eq p1, v3, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    const/4 v0, 0x7

    if-eq p1, v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    goto :goto_1

    .line 269
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result p1

    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b:[B

    .line 1296
    iget-object v4, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v4, v0, p1, p2}, Lcom/coloros/settings/privacy/a/g;->a([BILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1298
    invoke-static {p0, p1, p2}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;ILjava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_3

    const/4 p1, -0x1

    .line 271
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->setResult(I)V

    .line 272
    iget p1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    if-ne p1, v3, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    .line 2286
    :goto_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result p1

    .line 2287
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 2288
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reset_src"

    invoke-virtual {p2, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2289
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "privacy_pwd"

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v0, "pw_privacy_reset_pwd"

    .line 2290
    invoke-static {p0, p1, v0, p2}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 274
    :cond_3
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    return-void

    .line 258
    :cond_4
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string p2, "question_choose_type"

    .line 259
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 261
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object p2

    const-class v0, Lcom/coloros/settings/privacy/SafeQuestionActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    invoke-virtual {p0, p1, v1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_5
    :goto_1
    return-void
.end method

.method protected final a(Landroid/view/View;I)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/IdRes;
        .end annotation
    .end param

    .line 132
    invoke-static {p0, p1}, Lcom/coloros/settings/utils/ag;->a(Landroid/app/Activity;Landroid/view/View;)V

    .line 1139
    invoke-virtual {p0, p2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1140
    instance-of p2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz p2, :cond_0

    .line 1141
    check-cast p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const p2, 0x7f0804bb

    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->setStatusBarBackgroundResource(I)V

    .line 134
    :cond_0
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/coloros/settings/utils/al;->a(Landroid/content/Context;Landroid/view/Window;)V

    .line 1146
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050063

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f0a020e

    .line 1147
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    const/16 p2, 0x8

    .line 1149
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method protected final a(Ljava/lang/String;)V
    .locals 4

    .line 155
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 156
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->m:Lcom/coloros/settings/privacy/a/g$d;

    if-nez v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v0}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->m:Lcom/coloros/settings/privacy/a/g$d;

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    iget-object v1, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->m:Lcom/coloros/settings/privacy/a/g$d;

    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result v2

    new-instance v3, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;

    invoke-direct {v3, p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$1;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2, p1, v3}, Lcom/coloros/settings/privacy/a/g;->a(Lcom/coloros/settings/privacy/a/g$d;ILjava/lang/String;Lcom/coloros/settings/privacy/a/g$b;)V

    return-void

    .line 171
    :cond_1
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b(Ljava/lang/String;)V

    return-void
.end method

.method public attachBaseContext(Landroid/content/Context;)V
    .locals 0

    .line 190
    invoke-static {p1}, Lcom/coloros/settings/utils/o;->c(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->attachBaseContext(Landroid/content/Context;)V

    return-void
.end method

.method protected final b(Ljava/lang/String;)V
    .locals 4

    .line 194
    iget v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->c:I

    const/4 v1, 0x1

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-eq v0, v3, :cond_0

    if-eq v0, v2, :cond_0

    const/4 p1, 0x5

    if-eq v0, p1, :cond_3

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 211
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 214
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b()V

    return-void

    :cond_1
    const/4 v0, 0x6

    .line 203
    invoke-static {p1, v0}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 206
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b()V

    return-void

    .line 196
    :cond_2
    invoke-static {p1, v2}, Lcom/coloros/settings/utils/z;->a(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 199
    invoke-direct {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b()V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 218
    invoke-virtual {p0, v3, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 8

    .line 322
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    if-nez p1, :cond_8

    const/4 p1, -0x1

    if-ne p2, p1, :cond_7

    if-eqz p3, :cond_7

    const/4 p2, 0x0

    const-string v0, "question_result_type"

    .line 326
    invoke-virtual {p3, v0, p2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "question_result_detail"

    .line 327
    invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "question_answer"

    .line 328
    invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "question_email"

    .line 329
    invoke-virtual {p3, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "question_account"

    .line 330
    invoke-virtual {p3, v4, p2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p3

    .line 332
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v5, "ChooseAbstractPrivacy"

    if-eqz v4, :cond_0

    const-string v2, "onActivityResult answer is empty, finish!"

    .line 333
    invoke-static {v5, v2}, Lcom/coloros/settings/utils/ak;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, p2

    goto :goto_0

    .line 335
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 336
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->e:Ljava/lang/String;

    .line 2304
    iget-object v6, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v6, v3, v4, v2}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2306
    invoke-static {p0, v3, v4}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 337
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onActivityResult startSaveAndFinish "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 339
    :cond_2
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result v4

    iget-object v6, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->e:Ljava/lang/String;

    .line 2312
    iget-object v7, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {v7, v4, v6, v2, v3}, Lcom/coloros/settings/privacy/a/g;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2314
    invoke-static {p0, v4, v6}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 340
    :cond_3
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    const-string v4, "onActivityResult startSavendFinish with email "

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/coloros/settings/utils/ak;->b(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz v2, :cond_5

    .line 344
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "privacy_quesion_type_choose"

    .line 345
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v0, p1, :cond_4

    .line 346
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "privacy_quesion_detail_choose"

    .line 347
    invoke-static {v3, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 349
    :cond_4
    invoke-static {p0, p3}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;Z)V

    .line 350
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result p3

    invoke-static {p0, p3}, Lcom/coloros/settings/privacy/PrivacySettingsFragment;->a(Landroid/content/Context;I)V

    .line 353
    invoke-static {}, Lcom/coloros/settings/utils/al;->p()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 354
    invoke-static {p0}, Lcom/coloros/settings/privacy/c;->g(Landroid/content/Context;)V

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_1

    :cond_6
    move p1, p2

    .line 358
    :goto_1
    invoke-virtual {p0, p1}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->setResult(I)V

    goto :goto_2

    .line 361
    :cond_7
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    return-void

    .line 364
    :cond_8
    :goto_2
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 370
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->i:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 371
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a()I

    move-result p1

    .line 2376
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getIntent()Landroid/content/Intent;

    .line 2377
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2378
    sget-object v1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->l:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 2379
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2381
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/CharSequence;

    .line 2382
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 2384
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 2385
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2386
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v2

    add-int/2addr v2, v4

    goto :goto_0

    .line 2389
    :cond_0
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    const v2, 0x7f130215

    invoke-direct {v1, p0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 2390
    invoke-virtual {v1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    const/4 v3, 0x0

    .line 2391
    invoke-virtual {v1, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/coloros/settings/privacy/-$$Lambda$ChooseAbstractPrivacy$wpZPKOEPBxMVkzeHEZdwQ5zOP1Y;

    invoke-direct {v2, p0, v0}, Lcom/coloros/settings/privacy/-$$Lambda$ChooseAbstractPrivacy$wpZPKOEPBxMVkzeHEZdwQ5zOP1Y;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;Ljava/util/Map;)V

    .line 2392
    invoke-virtual {v1, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 2416
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 371
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :cond_1
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 100
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 101
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 102
    invoke-static {p0}, Lcom/coloros/settings/utils/al;->a(Landroid/app/Activity;)V

    .line 103
    new-instance v0, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {v0, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->f:Lcom/coloros/settings/privacy/a/g;

    .line 104
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "choose_password_type"

    .line 105
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->a:I

    const-string v2, ""

    .line 107
    invoke-virtual {p0, v2}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->setTitle(Ljava/lang/CharSequence;)V

    const-string v2, "confirm_challenge"

    .line 108
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->b:[B

    const-string v2, "password_quality_type"

    .line 109
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->c:I

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const/4 v1, -0x1

    const-string v2, "key_ui_mode"

    .line 114
    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-eq p1, v1, :cond_0

    if-eq p1, v0, :cond_0

    .line 116
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->finish()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 177
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 178
    iget-object v0, p0, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->n:Landroid/os/Handler;

    new-instance v1, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy$2;-><init>(Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 125
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ChooseAbstractPrivacy;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    const-string v1, "key_ui_mode"

    .line 126
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
