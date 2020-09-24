.class final Lcom/android/settings/notification/NotificationSwitchBarPreference$1;
.super Ljava/lang/Object;
.source "NotificationSwitchBarPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/notification/NotificationSwitchBarPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/android/settings/notification/NotificationSwitchBarPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationSwitchBarPreference;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 46
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->a(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/widget/ToggleSwitch;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->b(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->a(Lcom/android/settings/notification/NotificationSwitchBarPreference;Z)Z

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->b(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->a(Z)V

    .line 51
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->b(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 52
    iget-object p1, p0, Lcom/android/settings/notification/NotificationSwitchBarPreference$1;->a:Lcom/android/settings/notification/NotificationSwitchBarPreference;

    invoke-static {p1}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->b(Lcom/android/settings/notification/NotificationSwitchBarPreference;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/NotificationSwitchBarPreference;->a(Z)V

    :cond_1
    return-void
.end method
