.class public final Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;
.super Ljava/lang/Object;
.source "AbstractZenModeAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleNameDialog$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field a:Lcom/android/settings/notification/y;

.field final synthetic b:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/y;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->b:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    iput-object p2, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/y;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 12

    .line 146
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->b:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    iget-object v0, v0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->i:Lcom/android/settingslib/core/instrumentation/d;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->b:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    invoke-static {v1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x4f3

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/d;->a(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 148
    new-instance v0, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/y;

    iget-object v6, v1, Lcom/android/settings/notification/y;->f:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/y;

    iget-object v7, v1, Lcom/android/settings/notification/y;->d:Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/y;

    iget-object v8, v1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    const/4 v9, 0x0

    const/4 v10, 0x2

    const/4 v11, 0x1

    move-object v4, v0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZ)V

    .line 151
    iget-object p1, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->b:Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;

    iget-object p1, p1, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a:Lcom/android/settings/notification/w;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/w;->a(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 153
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/y;

    iget-object v0, v0, Lcom/android/settings/notification/y;->c:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;->a(Ljava/lang/String;Landroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
