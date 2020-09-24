.class public final synthetic Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/content/Context;

.field private final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    iput-object p2, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$2:Landroid/content/Context;

    iput-object p4, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$3:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$2:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$djj6i3Qm8aCx14DswcDYw812Ijo;->f$3:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->lambda$deleteMsg$3$SettingsFeatureProxyManager(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
