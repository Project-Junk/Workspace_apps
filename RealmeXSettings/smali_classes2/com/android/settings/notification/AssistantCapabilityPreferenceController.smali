.class public Lcom/android/settings/notification/AssistantCapabilityPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "AssistantCapabilityPreferenceController.java"


# static fields
.field static final PRIORITIZER_KEY:Ljava/lang/String; = "asst_capability_prioritizer"

.field static final SMART_KEY:Ljava/lang/String; = "asst_capabilities_actions_replies"


# instance fields
.field private mBackend:Lcom/android/settings/notification/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    new-instance p1, Lcom/android/settings/notification/k;

    invoke-direct {p1}, Lcom/android/settings/notification/k;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 69
    invoke-static {}, Lcom/android/settings/notification/k;->b()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x5

    return v0
.end method

.method public isChecked()Z
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asst_capability_prioritizer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "key_importance"

    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const-string v2, "asst_capabilities_actions_replies"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const-string v1, "key_contextual_actions"

    .line 50
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "key_text_replies"

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v2
.end method

.method setBackend(Lcom/android/settings/notification/k;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->mBackend:Lcom/android/settings/notification/k;

    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capability_prioritizer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "key_importance"

    .line 59
    invoke-static {v0, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;Z)V

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/AssistantCapabilityPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "asst_capabilities_actions_replies"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "key_contextual_actions"

    .line 61
    invoke-static {v0, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;Z)V

    const-string v0, "key_text_replies"

    .line 62
    invoke-static {v0, p1}, Lcom/android/settings/notification/k;->a(Ljava/lang/String;Z)V

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method
