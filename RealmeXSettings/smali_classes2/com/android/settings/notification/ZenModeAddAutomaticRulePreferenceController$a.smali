.class public final Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;
.super Ljava/lang/Object;
.source "ZenModeAddAutomaticRulePreferenceController.java"

# interfaces
.implements Lcom/android/settings/notification/ZenRuleSelectionDialog$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/android/settings/notification/y;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController$a;->a:Lcom/android/settings/notification/ZenModeAddAutomaticRulePreferenceController;

    .line 1070
    iget-object v1, p1, Lcom/android/settings/notification/y;->e:Landroid/net/Uri;

    new-instance v2, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;

    invoke-direct {v2, v0, p1}, Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController$a;-><init>(Lcom/android/settings/notification/AbstractZenModeAutomaticRulePreferenceController;Lcom/android/settings/notification/y;)V

    const/4 p1, 0x0

    invoke-static {p2, p1, v1, v2}, Lcom/android/settings/notification/ZenRuleNameDialog;->a(Landroidx/fragment/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$a;)V

    return-void
.end method

.method public final b(Lcom/android/settings/notification/y;Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 77
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object p1, p1, Lcom/android/settings/notification/y;->d:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 78
    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
