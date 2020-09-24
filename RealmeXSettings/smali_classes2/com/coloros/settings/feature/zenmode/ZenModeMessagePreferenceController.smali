.class public Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;
.super Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;
.source "ZenModeMessagePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/a/b;


# static fields
.field private static final SOURCE_NONE:I = -0x1

.field private static final SOURCE_NONE_INDEX:I = 0x3

.field private static final TAG:Ljava/lang/String; = "ZenModeMessagePreferenceController"


# instance fields
.field private mBackend:Lcom/coloros/settings/feature/zenmode/b;

.field private mDefaultValueIndex:I

.field private mPolicy:Landroid/app/NotificationManager$Policy;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 45
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->setSingleSelect(Z)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 57
    invoke-super {p0, p1}, Lcom/coloros/settings/feature/controller/BaseListDialogPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 58
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030124

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 59
    invoke-virtual {p0, p1}, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->setEntries([Ljava/lang/CharSequence;)V

    .line 61
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    instance-of p1, p1, Lcom/color/support/preference/ColorListPreference;

    if-eqz p1, :cond_0

    .line 62
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {p1}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    iget v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDefaultValueIndex:I

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/CharSequence;)V

    .line 64
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast p1, Lcom/color/support/preference/ColorListPreference;

    iget v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDefaultValueIndex:I

    invoke-virtual {p1, v0}, Lcom/color/support/preference/ColorListPreference;->setValueIndex(I)V

    :cond_0
    return-void
.end method

.method public handlePreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    .line 70
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 71
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/coloros/settings/feature/zenmode/b;->a(Ljava/lang/String;)I

    move-result p1

    const/4 p2, 0x1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ne p1, v0, :cond_1

    .line 73
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v0, v0, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    goto :goto_1

    :cond_1
    move v0, p1

    .line 75
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "value = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,allowMessages = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " ,allowMessagesFrom = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->sourceToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ZenModeMessagePreferenceController"

    .line 75
    invoke-static {v3, v2}, Lcom/coloros/settings/utils/aa;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mBackend:Lcom/coloros/settings/feature/zenmode/b;

    invoke-virtual {v2}, Lcom/coloros/settings/feature/zenmode/b;->b()V

    .line 78
    iget-object v2, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mBackend:Lcom/coloros/settings/feature/zenmode/b;

    const/4 v3, 0x4

    .line 79
    invoke-virtual {v2, v1, v3}, Lcom/coloros/settings/feature/zenmode/b;->a(ZI)I

    move-result v3

    iget-object v4, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v4, v4, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget-object v5, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget v5, v5, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    .line 78
    invoke-virtual {v2, v3, v4, v0, v5}, Lcom/coloros/settings/feature/zenmode/b;->a(IIII)V

    .line 83
    iget-object v0, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v0, Lcom/color/support/preference/ColorListPreference;

    invoke-virtual {v0}, Lcom/color/support/preference/ColorListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    const/4 p1, 0x3

    .line 85
    :goto_2
    iget-object v1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDialogPreference:Landroidx/preference/DialogPreference;

    check-cast v1, Lcom/color/support/preference/ColorListPreference;

    aget-object p1, v0, p1

    invoke-virtual {v1, p1}, Lcom/color/support/preference/ColorListPreference;->a(Ljava/lang/CharSequence;)V

    return p2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 50
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/NotificationManager;->getNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    .line 51
    invoke-static {}, Lcom/coloros/settings/feature/zenmode/b;->a()Lcom/coloros/settings/feature/zenmode/b;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mBackend:Lcom/coloros/settings/feature/zenmode/b;

    .line 52
    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    invoke-virtual {p1}, Landroid/app/NotificationManager$Policy;->allowMessages()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mPolicy:Landroid/app/NotificationManager$Policy;

    iget p1, p1, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Lcom/coloros/settings/feature/zenmode/ZenModeMessagePreferenceController;->mDefaultValueIndex:I

    return-void
.end method
