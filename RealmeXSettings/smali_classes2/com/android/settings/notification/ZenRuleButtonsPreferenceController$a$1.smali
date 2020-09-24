.class final Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a$1;
.super Ljava/lang/Object;
.source "ZenRuleButtonsPreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenDeleteRuleDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .locals 4

    .line 105
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "DELETE_RULE"

    .line 106
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->e(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0xaf

    invoke-virtual {p1, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 109
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a$1;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController$a;->a:Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;->f(Lcom/android/settings/notification/ZenRuleButtonsPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const/high16 v1, 0x4000000

    .line 110
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->b(I)Lcom/android/settings/core/f;

    move-result-object p1

    const-class v1, Lcom/android/settings/notification/ZenModeAutomationSettings;

    .line 111
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v1, 0x8e

    .line 112
    invoke-virtual {p1, v1}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 114
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    return-void
.end method
