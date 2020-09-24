.class public Lcom/coloros/systemui/navbar/proxy/NavBarSettingsFeatureProxy;
.super Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;
.source "NavBarSettingsFeatureProxy.java"


# static fields
.field private static final ENTRANCE_PATH:Ljava/lang/String; = "smart_convenient"

.field public static final MSG_ID:Ljava/lang/String; = "nav_bar"

.field private static final TARGET_ACTION:Ljava/lang/String; = "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

.field private static final TITLE_RES_NAME:Ljava/lang/String; = "oppo_navigation_gesture_guide_swipe_side_new_feature"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;-><init>()V

    return-void
.end method


# virtual methods
.method public getEntrancePath()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "smart_convenient"

    return-object p0
.end method

.method public getMsgId()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "nav_bar"

    return-object p0
.end method

.method public getPkgName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTargetAction()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "oppo.intent.action.NAVIGATION_BAR_SETTINGS"

    return-object p0
.end method

.method public getTargetPkgName(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const p0, 0x7f1105fb

    .line 48
    invoke-virtual {p1, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTitleResName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "oppo_navigation_gesture_guide_swipe_side_new_feature"

    return-object p0
.end method

.method public isAvailable(Landroid/content/Context;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
