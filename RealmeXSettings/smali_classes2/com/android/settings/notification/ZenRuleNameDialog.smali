.class public Lcom/android/settings/notification/ZenRuleNameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleNameDialog$a;
    }
.end annotation


# static fields
.field protected static a:Lcom/android/settings/notification/ZenRuleNameDialog$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .line 2110
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$a;)V
    .locals 2

    .line 57
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "zen_rule_name"

    .line 58
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extra_zen_condition_id"

    .line 59
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 60
    sput-object p3, Lcom/android/settings/notification/ZenRuleNameDialog;->a:Lcom/android/settings/notification/ZenRuleNameDialog$a;

    .line 62
    new-instance p1, Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>()V

    .line 63
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->setArguments(Landroid/os/Bundle;)V

    const/4 p2, 0x0

    .line 64
    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenRuleNameDialog;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 65
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p2, "ZenRuleNameDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x4f5

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extra_zen_condition_id"

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    const-string v1, "zen_rule_name"

    .line 72
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 76
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 77
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d03c3

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    const v5, 0x7f0a07d2

    .line 79
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    if-nez v3, :cond_1

    .line 82
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 86
    :cond_1
    invoke-virtual {v5, v1}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 87
    new-instance v1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {v1, v4}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1114
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v4

    .line 1115
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v0

    const v6, 0x7f121b64

    if-eqz v3, :cond_3

    if-eqz v4, :cond_2

    const v6, 0x7f121ad1

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    const v6, 0x7f121ad4

    .line 88
    :cond_3
    :goto_1
    invoke-virtual {v1, v6}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    invoke-virtual {v0, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object v0

    if-eqz v3, :cond_4

    const v1, 0x7f121ad0

    goto :goto_2

    :cond_4
    const v1, 0x7f120f1b

    :goto_2
    new-instance v2, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v2, p0, v5, v3, p1}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V

    .line 90
    invoke-virtual {v0, v1, v2}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120491

    .line 105
    invoke-virtual {p1, v0, v7}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
