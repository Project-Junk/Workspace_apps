.class public Lcom/coloros/settings/feature/password/module/CodeBookModule;
.super Lcom/color/injector/adaptor/i;
.source "CodeBookModule.java"


# static fields
.field private static final COUNT_DOWN_TIME_FUTURE:J = 0xbb8L

.field private static final COUNT_DOWN_TIME_INTERVAL:J = 0x3e8L


# instance fields
.field private mCodebookCount:I

.field private mCodebookMode:Z

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 40
    invoke-direct {p0, v0, v0}, Lcom/color/injector/adaptor/i;-><init>(II)V

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookMode:Z

    return-void
.end method

.method private showExitCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 4

    .line 75
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12122a

    .line 76
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120610

    .line 77
    invoke-virtual {v1, v2, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p2

    const v1, 0x7f120634

    const/4 v2, 0x0

    .line 78
    invoke-virtual {p2, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 79
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 80
    iget p2, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookCount:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le p2, v1, :cond_0

    const v3, 0x7f12051e

    .line 81
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v3, 0x7f12051f

    .line 83
    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, v2

    invoke-virtual {p1, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 85
    :goto_0
    invoke-virtual {v0}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p2

    .line 86
    new-instance v0, Lcom/coloros/settings/feature/password/module/-$$Lambda$CodeBookModule$S_Z2B1NE-8flhBnwVBsyOPY7haQ;

    invoke-direct {v0, p0}, Lcom/coloros/settings/feature/password/module/-$$Lambda$CodeBookModule$S_Z2B1NE-8flhBnwVBsyOPY7haQ;-><init>(Lcom/coloros/settings/feature/password/module/CodeBookModule;)V

    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 92
    invoke-virtual {p2}, Lcolor/support/v7/app/AlertDialog;->show()V

    const/4 v0, -0x2

    .line 93
    invoke-virtual {p2, v0}, Lcolor/support/v7/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 95
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    const v1, 0x7f0600d4

    .line 97
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 99
    :cond_1
    new-instance v0, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;

    invoke-direct {v0, p0, p2, p1}, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;-><init>(Lcom/coloros/settings/feature/password/module/CodeBookModule;Lcolor/support/v7/app/AlertDialog;Landroid/content/res/Resources;)V

    .line 127
    invoke-virtual {v0}, Lcom/coloros/settings/feature/password/module/CodeBookModule$1;->start()Landroid/os/CountDownTimer;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method


# virtual methods
.method public initByIntent(Landroid/content/Intent;)V
    .locals 3

    .line 44
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const-string v1, "codebook_from_verify"

    .line 47
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 49
    iput-boolean v2, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookMode:Z

    const-string v1, "codebook_package_num"

    .line 50
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 53
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 55
    :catch_0
    iput v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookCount:I

    :cond_1
    return-void

    .line 59
    :cond_2
    iput-boolean v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookMode:Z

    return-void
.end method

.method public synthetic lambda$showExitCodeBookConfirmDialog$0$CodeBookModule(Landroid/content/DialogInterface;)V
    .locals 0

    .line 87
    iget-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mTimer:Landroid/os/CountDownTimer;

    if-eqz p1, :cond_0

    .line 88
    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    const/4 p1, 0x0

    .line 89
    iput-object p1, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    return-void
.end method

.method public showCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Z
    .locals 2

    .line 64
    invoke-virtual {p0}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 67
    :cond_0
    iget-boolean v0, p0, Lcom/coloros/settings/feature/password/module/CodeBookModule;->mCodebookMode:Z

    if-eqz v0, :cond_1

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/password/module/CodeBookModule;->showExitCodeBookConfirmDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
