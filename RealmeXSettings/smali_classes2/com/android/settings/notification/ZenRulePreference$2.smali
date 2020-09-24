.class final Lcom/android/settings/notification/ZenRulePreference$2;
.super Ljava/lang/Object;
.source "ZenRulePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenRulePreference;
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

    .line 148
    iput-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 151
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    invoke-static {v0}, Lcom/android/settings/notification/ZenRulePreference;->b(Lcom/android/settings/notification/ZenRulePreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 152
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object p1, p1, Lcom/android/settings/notification/ZenRulePreference;->e:Lcom/android/settings/notification/w;

    iget-object v0, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, v0, Lcom/android/settings/notification/ZenRulePreference;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v1, v1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/w;->a(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    .line 153
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {v0}, Landroid/app/AutomaticZenRule;->isEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settings/notification/ZenRulePreference;->a(Lcom/android/settings/notification/ZenRulePreference;Z)V

    .line 154
    iget-object p1, p0, Lcom/android/settings/notification/ZenRulePreference$2;->a:Lcom/android/settings/notification/ZenRulePreference;

    iget-object v0, p1, Lcom/android/settings/notification/ZenRulePreference;->i:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenRulePreference;->a(Landroid/app/AutomaticZenRule;)V

    return-void
.end method
