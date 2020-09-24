.class public Lcom/android/settings/notification/ZenDeleteRuleDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenDeleteRuleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenDeleteRuleDialog$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/android/settings/notification/ZenDeleteRuleDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/ZenDeleteRuleDialog$a;)V
    .locals 2

    .line 47
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 48
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 49
    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "zen_rule_name"

    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "zen_rule_id"

    .line 50
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sput-object p3, Lcom/android/settings/notification/ZenDeleteRuleDialog;->a:Lcom/android/settings/notification/ZenDeleteRuleDialog$a;

    .line 53
    new-instance p1, Lcom/android/settings/notification/ZenDeleteRuleDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenDeleteRuleDialog;-><init>()V

    .line 54
    invoke-virtual {p1, v1}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 55
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 56
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "ZenDeleteRuleDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4f2

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "zen_rule_name"

    .line 67
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "zen_rule_id"

    .line 68
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 70
    new-instance v2, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const v0, 0x7f121b12

    .line 71
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120491

    const/4 v3, 0x0

    .line 72
    invoke-virtual {v0, v2, v3}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;-><init>(Lcom/android/settings/notification/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V

    const p1, 0x7f121b11

    .line 73
    invoke-virtual {v0, p1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    const v0, 0x102000b

    .line 82
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x5

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    :cond_0
    return-object p1
.end method
