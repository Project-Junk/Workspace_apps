.class final Lcom/android/settings/notification/ZenRuleSelectionDialog$1;
.super Ljava/lang/Object;
.source "ZenRuleSelectionDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleSelectionDialog;->a(Lcom/android/settings/notification/y;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/y;

.field final synthetic b:Lcom/android/settings/notification/ZenRuleSelectionDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleSelectionDialog;Lcom/android/settings/notification/y;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->b:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    iput-object p2, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->a:Lcom/android/settings/notification/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 141
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->b:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {p1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->dismiss()V

    .line 142
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->a:Lcom/android/settings/notification/y;

    iget-boolean p1, p1, Lcom/android/settings/notification/y;->g:Z

    if-eqz p1, :cond_0

    .line 143
    sget-object p1, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a:Lcom/android/settings/notification/ZenRuleSelectionDialog$b;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->a:Lcom/android/settings/notification/y;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->b:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$b;->a(Lcom/android/settings/notification/y;Landroidx/fragment/app/Fragment;)V

    return-void

    .line 145
    :cond_0
    sget-object p1, Lcom/android/settings/notification/ZenRuleSelectionDialog;->a:Lcom/android/settings/notification/ZenRuleSelectionDialog$b;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->a:Lcom/android/settings/notification/y;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleSelectionDialog$1;->b:Lcom/android/settings/notification/ZenRuleSelectionDialog;

    invoke-virtual {v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/android/settings/notification/ZenRuleSelectionDialog$b;->b(Lcom/android/settings/notification/y;Landroidx/fragment/app/Fragment;)V

    return-void
.end method
