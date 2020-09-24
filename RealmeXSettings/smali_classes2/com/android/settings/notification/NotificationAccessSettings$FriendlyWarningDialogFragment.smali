.class public Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private static synthetic a(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static synthetic a(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 184
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->a(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic lambda$d49RgOnf93Qi5Mi5ovGp6upuqWI(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->a(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic lambda$mWH5a4me3FIjL8wZ9j28CVWDvfU(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->a(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x228

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 172
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "l"

    .line 173
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "c"

    .line 175
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 174
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v0, 0x7f120ec6

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 181
    invoke-virtual {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 182
    invoke-virtual {v0, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setCancelable(Z)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$mWH5a4me3FIjL8wZ9j28CVWDvfU;

    invoke-direct {v2, v1, p1}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$mWH5a4me3FIjL8wZ9j28CVWDvfU;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    const p1, 0x7f120ec5

    .line 183
    invoke-virtual {v0, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$d49RgOnf93Qi5Mi5ovGp6upuqWI;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$d49RgOnf93Qi5Mi5ovGp6upuqWI;

    const v1, 0x7f120ec4

    .line 185
    invoke-virtual {p1, v1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 189
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
