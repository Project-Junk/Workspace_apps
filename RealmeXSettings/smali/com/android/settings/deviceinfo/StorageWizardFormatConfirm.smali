.class public Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "StorageWizardFormatConfirm.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    .line 98
    new-instance p4, Landroid/content/Intent;

    const-class p5, Lcom/android/settings/deviceinfo/StorageWizardFormatProgress;

    invoke-direct {p4, p0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p5, "android.os.storage.extra.DISK_ID"

    .line 99
    invoke-virtual {p4, p5, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_forget_uuid"

    .line 100
    invoke-virtual {p4, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "format_private"

    .line 101
    invoke-virtual {p4, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 102
    invoke-virtual {p0, p4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 43
    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method private static a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 57
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_forget_uuid"

    const/4 v1, 0x0

    .line 58
    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "format_private"

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 61
    new-instance p1, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;-><init>()V

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->setArguments(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "format_warning"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public static b(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    .line 51
    invoke-static {p0, p1, v0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;Z)V

    return-void
.end method

.method public static synthetic lambda$plvF0U-btdzpXArJakRvWxlefHc(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x55f

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 11

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.os.storage.extra.DISK_ID"

    .line 76
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "format_forget_uuid"

    .line 77
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "format_private"

    .line 78
    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 80
    const-class v4, Landroid/os/storage/StorageManager;

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    .line 81
    invoke-virtual {v4, v1}, Landroid/os/storage/StorageManager;->findDiskById(Ljava/lang/String;)Landroid/os/storage/DiskInfo;

    move-result-object v4

    .line 83
    new-instance v5, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v5, p1}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x7f1215b9

    .line 85
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 84
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f1215b8

    .line 88
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/CharSequence;

    .line 89
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    .line 90
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v7

    .line 91
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x2

    aput-object v9, v8, v10

    .line 87
    invoke-static {v6, v8}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    const/high16 v6, 0x1040000

    const/4 v8, 0x0

    .line 93
    invoke-virtual {v5, v6, v8}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    const v6, 0x7f1215b7

    .line 95
    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/StorageWizardFormatConfirm;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    new-array v7, v7, [Ljava/lang/CharSequence;

    .line 96
    invoke-virtual {v4}, Landroid/os/storage/DiskInfo;->getShortDescription()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v3

    .line 95
    invoke-static {v6, v7}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    new-instance v4, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$plvF0U-btdzpXArJakRvWxlefHc;

    invoke-direct {v4, p1, v1, v2, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$StorageWizardFormatConfirm$plvF0U-btdzpXArJakRvWxlefHc;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 94
    invoke-virtual {v5, v3, v4}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    .line 105
    invoke-virtual {v5}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
