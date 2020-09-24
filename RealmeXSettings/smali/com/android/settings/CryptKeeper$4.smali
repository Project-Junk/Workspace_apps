.class final Lcom/android/settings/CryptKeeper$4;
.super Landroid/os/AsyncTask;
.source "CryptKeeper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CryptKeeper;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field a:I

.field b:Ljava/lang/String;

.field c:Z

.field d:Z

.field final synthetic e:Lcom/android/settings/CryptKeeper;


# direct methods
.method constructor <init>(Lcom/android/settings/CryptKeeper;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 p1, 0x0

    .line 478
    iput p1, p0, Lcom/android/settings/CryptKeeper$4;->a:I

    return-void
.end method

.method private varargs a()Ljava/lang/Void;
    .locals 5

    const-string v0, "0"

    .line 486
    :try_start_0
    invoke-static {}, Lcom/android/settings/CryptKeeper;->a()Landroid/os/storage/IStorageManager;

    move-result-object v1

    .line 487
    invoke-interface {v1}, Landroid/os/storage/IStorageManager;->getPasswordType()I

    move-result v2

    iput v2, p0, Lcom/android/settings/CryptKeeper$4;->a:I

    const-string v2, "OwnerInfo"

    .line 488
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/CryptKeeper$4;->b:Ljava/lang/String;

    const-string v2, "PatternVisible"

    .line 489
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/CryptKeeper$4;->c:Z

    const-string v2, "PasswordVisible"

    .line 490
    invoke-interface {v1, v2}, Landroid/os/storage/IStorageManager;->getField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lcom/android/settings/CryptKeeper$4;->d:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 492
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Error calling mount service "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CryptKeeper"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 477
    invoke-direct {p0}, Lcom/android/settings/CryptKeeper$4;->a()Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1500
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-virtual {p1}, Lcom/android/settings/CryptKeeper;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/settings/CryptKeeper$4;->d:Z

    const-string v1, "show_password"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1503
    iget p1, p0, Lcom/android/settings/CryptKeeper$4;->a:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1504
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d012f

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 1505
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f120901

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 1507
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d012d

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 1508
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->j(Lcom/android/settings/CryptKeeper;)V

    .line 1509
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f120900

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    goto :goto_0

    .line 1511
    :cond_1
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0d012b

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->setContentView(I)V

    .line 1512
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f1208ff

    invoke-static {p1, v0}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;I)I

    .line 1514
    :goto_0
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a0650

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1515
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {v0}, Lcom/android/settings/CryptKeeper;->k(Lcom/android/settings/CryptKeeper;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 1517
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v0, 0x7f0a04a4

    invoke-virtual {p1, v0}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 1518
    iget-object v0, p0, Lcom/android/settings/CryptKeeper$4;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    .line 1519
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 1521
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->l(Lcom/android/settings/CryptKeeper;)V

    .line 1523
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    const v1, 0x1020002

    invoke-virtual {p1, v1}, Lcom/android/settings/CryptKeeper;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v1, 0x400000

    invoke-virtual {p1, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 1525
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1526
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->a(Lcom/android/settings/CryptKeeper;)Lcom/android/internal/widget/LockPatternView;

    move-result-object p1

    iget-boolean v1, p0, Lcom/android/settings/CryptKeeper$4;->c:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternView;->setInStealthMode(Z)V

    .line 1528
    :cond_2
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->m(Lcom/android/settings/CryptKeeper;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1530
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->j(Lcom/android/settings/CryptKeeper;)V

    .line 1531
    iget-object p1, p0, Lcom/android/settings/CryptKeeper$4;->e:Lcom/android/settings/CryptKeeper;

    invoke-static {p1}, Lcom/android/settings/CryptKeeper;->n(Lcom/android/settings/CryptKeeper;)V

    :cond_3
    return-void
.end method
