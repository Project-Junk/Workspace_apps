.class public Lcom/android/settings/notification/BubbleWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BubbleWarningDialogFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 66
    invoke-static {p3, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->a(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method private synthetic b(Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    .line 62
    invoke-static {p3, p1, p2}, Lcom/android/settings/notification/BubblePreferenceController;->b(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic lambda$T4aZjfZCB2rGVvYLpWjxH3fqJXs(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->a(Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$U0oaKmu2uAg5oSWXBGVzqWCLvL0(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;ILandroid/content/DialogInterface;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->b(Ljava/lang/String;ILandroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x6a6

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "p"

    .line 49
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "u"

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120455

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f120454

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 56
    new-instance v3, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/BubbleWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 57
    invoke-virtual {v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v2

    .line 58
    invoke-virtual {v2, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 59
    invoke-virtual {v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$U0oaKmu2uAg5oSWXBGVzqWCLvL0;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$U0oaKmu2uAg5oSWXBGVzqWCLvL0;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const v3, 0x7f120452

    .line 60
    invoke-virtual {v1, v3, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/settings/notification/-$$Lambda$BubbleWarningDialogFragment$T4aZjfZCB2rGVvYLpWjxH3fqJXs;-><init>(Lcom/android/settings/notification/BubbleWarningDialogFragment;Ljava/lang/String;I)V

    const p1, 0x7f120453

    .line 64
    invoke-virtual {v1, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
