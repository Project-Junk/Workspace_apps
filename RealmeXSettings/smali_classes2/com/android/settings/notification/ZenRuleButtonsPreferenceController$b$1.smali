.class final Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 83
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 86
    :cond_0
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->c(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const/16 v1, 0x4f3

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {p2, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 88
    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/AutomaticZenRule;->setName(Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setModified(Z)V

    .line 90
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->j:Lcom/android/settings/notification/w;

    iget-object p2, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object p2, p2, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {p2}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->d(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$b;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->b(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method
