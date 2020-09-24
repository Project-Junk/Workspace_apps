.class public Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeBehaviorFooterPreferenceController.java"


# instance fields
.field private final a:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    const-string v0, "footer_preference"

    .line 37
    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    iput p3, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->a:I

    return-void
.end method

.method private static a(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "footer_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 6

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 1058
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->b()I

    move-result v0

    invoke-static {v0}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->a(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1111
    iget-object v0, p0, Lcom/android/settings/notification/AbstractZenModePreferenceController;->g:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 1062
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f121adb

    if-eqz v1, :cond_1

    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 1063
    invoke-static {v1}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1064
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 1065
    iget-object v1, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1067
    sget-object v1, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->h:Lcom/android/settings/notification/AbstractZenModePreferenceController$b;

    iget-object v5, v0, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    iget-object v5, v5, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/settings/notification/AbstractZenModePreferenceController$b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1069
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 1070
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v1, v3, v2

    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1073
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121b4d

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1078
    :cond_1
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 1079
    invoke-virtual {v1}, Landroid/service/notification/ZenModeConfig$ZenRule;->isAutomaticActive()Z

    move-result v5

    if-eqz v5, :cond_2

    iget v5, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v5}, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->a(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1081
    iget-object v1, v1, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    .line 1083
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    .line 1084
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v2

    .line 1083
    invoke-virtual {v0, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1089
    :cond_3
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f121ba1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 1091
    :cond_4
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/notification/ZenModeBehaviorFooterPreferenceController;->a:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 54
    :goto_0
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
