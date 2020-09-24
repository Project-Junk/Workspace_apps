.class final Lcom/android/settings/notification/ZenRulePreference$1;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/ZenRulePreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/ZenRulePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/ZenRulePreference;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->a:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 99
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$1;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRulePreference;->d:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$1;->a:Lcom/android/settings/notification/ZenRulePreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRulePreference;->a(Lcom/android/settings/notification/ZenRulePreference;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
