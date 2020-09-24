.class public final Lcom/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Lcom/android/settings/nfc/e;

.field private b:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 v0, 0x20

    const/16 v1, 0xa

    .line 137
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0xd

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 140
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    .line 141
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 66
    :cond_0
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->a:Lcom/android/settings/nfc/e;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->b:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Lcom/android/settings/nfc/e;->a(Landroid/content/ComponentName;)V

    .line 67
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    :goto_0
    return-void
.end method

.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    :try_start_0
    new-instance p1, Lcom/android/settings/nfc/e;

    invoke-direct {p1, p0}, Lcom/android/settings/nfc/e;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->a:Lcom/android/settings/nfc/e;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    .line 50
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "component"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    const-string v1, "category"

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    const/4 v2, 0x1

    const-string v3, "PaymentDefaultDialog"

    if-eqz v0, :cond_8

    if-nez p1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v4, "payment"

    .line 1080
    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1081
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Don\'t support defaults for category "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1089
    :cond_1
    iget-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->a:Lcom/android/settings/nfc/e;

    .line 2129
    iget-object p1, p1, Lcom/android/settings/nfc/e;->c:Ljava/util/ArrayList;

    .line 1090
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move-object v5, v4

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/nfc/e$b;

    .line 1091
    iget-object v7, v6, Lcom/android/settings/nfc/e$b;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, v7}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move-object v4, v6

    .line 1094
    :cond_3
    iget-boolean v7, v6, Lcom/android/settings/nfc/e$b;->c:Z

    if-eqz v7, :cond_2

    move-object v5, v6

    goto :goto_1

    :cond_4
    const-string p1, "Component "

    if-nez v4, :cond_5

    .line 1100
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a registered payment service."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1105
    :cond_5
    iget-object v6, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->a:Lcom/android/settings/nfc/e;

    invoke-virtual {v6}, Lcom/android/settings/nfc/e;->c()Landroid/content/ComponentName;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 1106
    invoke-virtual {v6, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1107
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already default."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1111
    :cond_6
    iput-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->b:Landroid/content/ComponentName;

    .line 1113
    iget-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    const v0, 0x7f120e49

    .line 1114
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-nez v5, :cond_7

    const v0, 0x7f120e47

    .line 1116
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1117
    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    .line 1118
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/nfc/PaymentDefaultDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1117
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1119
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    :cond_7
    const v0, 0x7f120e48

    .line 1121
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x2

    .line 1122
    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    .line 1123
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/nfc/PaymentDefaultDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, v5, Lcom/android/settings/nfc/e$b;->a:Ljava/lang/CharSequence;

    .line 1124
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1122
    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1125
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    :goto_2
    const v0, 0x7f121ab2

    .line 1127
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    const v0, 0x7f120e6b

    .line 1128
    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 1129
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1130
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 1131
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setupAlert()V

    move v1, v2

    goto :goto_4

    :cond_8
    :goto_3
    const-string p1, "Component or category are null"

    .line 1076
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    if-nez v1, :cond_9

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    :cond_9
    return-void
.end method
