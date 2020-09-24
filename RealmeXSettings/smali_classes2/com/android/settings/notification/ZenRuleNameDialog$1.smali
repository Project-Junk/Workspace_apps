.class final Lcom/android/settings/notification/ZenRuleNameDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleNameDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleNameDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Z

.field final synthetic c:Ljava/lang/CharSequence;

.field final synthetic d:Lcom/android/settings/notification/ZenRuleNameDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->d:Lcom/android/settings/notification/ZenRuleNameDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->a:Landroid/widget/EditText;

    iput-boolean p3, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->b:Z

    iput-object p4, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->c:Ljava/lang/CharSequence;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 94
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->a:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 98
    :cond_0
    iget-boolean p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->b:Z

    if-nez p2, :cond_1

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->c:Ljava/lang/CharSequence;

    if-eqz p2, :cond_1

    .line 99
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 102
    :cond_1
    sget-object p2, Lcom/android/settings/notification/ZenRuleNameDialog;->a:Lcom/android/settings/notification/ZenRuleNameDialog$a;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleNameDialog$1;->d:Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-virtual {v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/android/settings/notification/ZenRuleNameDialog$a;->a(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
