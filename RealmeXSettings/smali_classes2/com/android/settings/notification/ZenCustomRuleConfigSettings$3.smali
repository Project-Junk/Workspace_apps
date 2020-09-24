.class final Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;
.super Ljava/lang/Object;
.source "ZenCustomRuleConfigSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenCustomRuleConfigSettings;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->a:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 88
    new-instance p1, Lcom/android/settings/core/f;

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->a:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    iget-object v0, v0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->k:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/f;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/notification/ZenCustomRuleNotificationsSettings;

    .line 89
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Ljava/lang/String;)Lcom/android/settings/core/f;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRuleConfigSettings$3;->a:Lcom/android/settings/notification/ZenCustomRuleConfigSettings;

    .line 90
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenCustomRuleConfigSettings;->f()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(Landroid/os/Bundle;)Lcom/android/settings/core/f;

    move-result-object p1

    const/16 v0, 0x648

    .line 92
    invoke-virtual {p1, v0}, Lcom/android/settings/core/f;->a(I)Lcom/android/settings/core/f;

    move-result-object p1

    .line 93
    invoke-virtual {p1}, Lcom/android/settings/core/f;->a()V

    const/4 p1, 0x1

    return p1
.end method
