.class public abstract Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;
.super Ljava/lang/Object;
.source "AbsSettingsFeatureProxy.java"


# static fields
.field private static final SP_NAME:Ljava/lang/String; = "sp_settings_feature"


# instance fields
.field protected final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public buildMessageEntry(Landroid/content/Context;)Lcom/android/settingslib/messageentry/MessageEntry;
    .locals 3

    .line 60
    new-instance v0, Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getMsgId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getTitle(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->title(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v0

    .line 62
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getTitleResName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->titleResName(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v0

    .line 63
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getTargetAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetAction(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getTargetPkgName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->targetPackageName(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    move-result-object p1

    .line 65
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getEntrancePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->entrancePath(Ljava/lang/String;)Lcom/android/settingslib/messageentry/MessageEntry$Builder;

    move-result-object p0

    .line 66
    invoke-virtual {p0}, Lcom/android/settingslib/messageentry/MessageEntry$Builder;->build()Lcom/android/settingslib/messageentry/MessageEntry;

    move-result-object p0

    return-object p0
.end method

.method public abstract getEntrancePath()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getMsgId()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getPkgName(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public getShownState(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "sp_settings_feature"

    .line 75
    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 76
    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getMsgId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public abstract getTargetAction()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTargetPkgName(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTitle(Landroid/content/Context;)Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getTitleResName()Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract isAvailable(Landroid/content/Context;)Z
.end method

.method public updateShownState(Landroid/content/Context;Z)V
    .locals 2

    const-string v0, "sp_settings_feature"

    const/4 v1, 0x0

    .line 70
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-virtual {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;->getMsgId()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method
