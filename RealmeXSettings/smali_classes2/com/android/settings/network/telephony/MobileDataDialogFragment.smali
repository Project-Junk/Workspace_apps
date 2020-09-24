.class public Lcom/android/settings/network/telephony/MobileDataDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "MobileDataDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private a:Landroid/telephony/SubscriptionManager;

.field private b:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(II)Lcom/android/settings/network/telephony/MobileDataDialogFragment;
    .locals 3

    .line 54
    new-instance v0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "dialog_type"

    .line 57
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "subId"

    .line 58
    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 59
    invoke-virtual {v0, v1}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x62e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 122
    iget p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->b:I

    if-eqz p1, :cond_1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 128
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->a:Landroid/telephony/SubscriptionManager;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->f:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->f:I

    invoke-static {p1, v0, p2, p2}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IZZ)V

    return-void

    .line 133
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "unknown type "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->b:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 124
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->f:I

    const/4 v0, 0x0

    invoke-static {p1, p2, v0, v0}, Lcom/android/settings/network/telephony/d;->a(Landroid/content/Context;IZZ)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->a:Landroid/telephony/SubscriptionManager;

    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "dialog_type"

    .line 75
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->b:I

    const-string v1, "subId"

    .line 76
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->f:I

    .line 78
    iget p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->b:I

    const/4 v1, 0x0

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    .line 86
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->a:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->f:I

    .line 87
    invoke-virtual {p1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 88
    iget-object v3, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->a:Landroid/telephony/SubscriptionManager;

    .line 89
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    const v4, 0x7f1214de

    if-nez v3, :cond_0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-nez p1, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 99
    :cond_1
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 101
    :goto_1
    new-instance v4, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v4, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f1214ac

    new-array v6, v2, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    .line 102
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f1214aa

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v7

    aput-object v3, v6, v2

    .line 103
    invoke-virtual {v0, v5, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f1214ab

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v7

    .line 106
    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {v3, p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    .line 108
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 111
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "unknown type "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 80
    :cond_3
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f1206cf

    .line 81
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    .line 82
    invoke-virtual {p1, v0, p0}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    .line 83
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
