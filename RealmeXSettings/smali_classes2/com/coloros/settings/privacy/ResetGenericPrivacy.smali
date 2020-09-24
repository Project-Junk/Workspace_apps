.class public Lcom/coloros/settings/privacy/ResetGenericPrivacy;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ResetGenericPrivacy.java"


# instance fields
.field private a:Lcom/coloros/settings/privacy/a/g;

.field private b:Landroid/app/Dialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private a(I)V
    .locals 2

    .line 121
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 122
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "reset_type"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20012"

    const-string v1, "pw_privacy_reset"

    .line 123
    invoke-static {p0, p1, v1, v0}, Lcom/coloros/settings/utils/aj;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;)V
    .locals 0

    .line 91
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 92
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->finish()V

    return-void
.end method

.method private synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 88
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 89
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->finish()V

    return-void
.end method

.method private synthetic a(ZLandroid/content/DialogInterface;I)V
    .locals 4

    .line 94
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 95
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-class v1, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v0, 0x1

    const-string v1, "choose_password_type"

    if-nez p3, :cond_0

    const/4 p1, 0x5

    .line 97
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 p1, 0x0

    .line 99
    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(I)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x6

    const/4 v3, 0x2

    if-ne p3, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p1, 0x7

    .line 102
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 104
    invoke-direct {p0, v0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(I)V

    goto :goto_0

    .line 106
    :cond_1
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 108
    invoke-direct {p0, v3}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(I)V

    goto :goto_0

    :cond_2
    if-ne p3, v3, :cond_3

    .line 111
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 113
    invoke-direct {p0, v3}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(I)V

    .line 115
    :cond_3
    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic lambda$DzilJg6pqDxEmbKPYYYH4KLKdqA(Lcom/coloros/settings/privacy/ResetGenericPrivacy;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic lambda$bQUjvFJpu1aeVbUsOgo8HskknpM(Lcom/coloros/settings/privacy/ResetGenericPrivacy;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(ZLandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$qHJD01weYX7Y3NSB_rBbyvHZUgI(Lcom/coloros/settings/privacy/ResetGenericPrivacy;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 p3, 0x1

    if-ne p3, p1, :cond_0

    .line 131
    invoke-virtual {p0, p2}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->setResult(I)V

    .line 132
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->finishAndRemoveTask()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 45
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, -0x80000000

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    const/4 v0, 0x0

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 50
    new-instance p1, Lcom/coloros/settings/privacy/a/g;

    invoke-direct {p1, p0}, Lcom/coloros/settings/privacy/a/g;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a:Lcom/coloros/settings/privacy/a/g;

    .line 1064
    iget-object p1, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->a:Lcom/coloros/settings/privacy/a/g;

    invoke-virtual {p1}, Lcom/coloros/settings/privacy/a/g;->a()Lcom/coloros/settings/privacy/a/g$d;

    move-result-object p1

    iget-object p1, p1, Lcom/coloros/settings/privacy/a/g$d;->e:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v1, 0x1

    xor-int/2addr p1, v1

    const-string v2, "6Ybor28QRRMyftsLi4bN2w"

    .line 1065
    invoke-static {p0, v2}, Lcom/heytap/usercenter/accountsdk/AccountAgent;->isLogin(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/coloros/settings/privacy/ChooseGenericPrivacy;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    const v3, 0x7f121248

    const v4, 0x7f12124a

    const/4 v5, 0x2

    const v6, 0x7f121249

    if-eqz p1, :cond_1

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    .line 1068
    new-array v2, v2, [Ljava/lang/CharSequence;

    .line 1069
    invoke-virtual {p0, v6}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v0

    .line 1070
    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    .line 1071
    invoke-virtual {p0, v3}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v5

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_2

    .line 1073
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 1074
    invoke-virtual {p0, v6}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1075
    invoke-virtual {p0, v4}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_3

    .line 1077
    new-array v2, v5, [Ljava/lang/CharSequence;

    .line 1078
    invoke-virtual {p0, v6}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v0

    .line 1079
    invoke-virtual {p0, v3}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v1

    goto :goto_1

    .line 1081
    :cond_3
    new-array v2, v1, [Ljava/lang/CharSequence;

    .line 1082
    invoke-virtual {p0, v6}, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1085
    :goto_1
    new-instance v0, Lcolor/support/v7/app/AlertDialog$Builder;

    const v3, 0x7f130215

    invoke-direct {v0, p0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1086
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setDialogType(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v3, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$qHJD01weYX7Y3NSB_rBbyvHZUgI;

    invoke-direct {v3, p0}, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$qHJD01weYX7Y3NSB_rBbyvHZUgI;-><init>(Lcom/coloros/settings/privacy/ResetGenericPrivacy;)V

    .line 1087
    invoke-virtual {v0, v1, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$DzilJg6pqDxEmbKPYYYH4KLKdqA;

    invoke-direct {v1, p0}, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$DzilJg6pqDxEmbKPYYYH4KLKdqA;-><init>(Lcom/coloros/settings/privacy/ResetGenericPrivacy;)V

    .line 1090
    invoke-virtual {v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$bQUjvFJpu1aeVbUsOgo8HskknpM;

    invoke-direct {v1, p0, p1}, Lcom/coloros/settings/privacy/-$$Lambda$ResetGenericPrivacy$bQUjvFJpu1aeVbUsOgo8HskknpM;-><init>(Lcom/coloros/settings/privacy/ResetGenericPrivacy;Z)V

    .line 1093
    invoke-virtual {v0, v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 1116
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->b:Landroid/app/Dialog;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->b:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 58
    iget-object v0, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->b:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/coloros/settings/privacy/ResetGenericPrivacy;->b:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->cancel()V

    :cond_0
    return-void
.end method
