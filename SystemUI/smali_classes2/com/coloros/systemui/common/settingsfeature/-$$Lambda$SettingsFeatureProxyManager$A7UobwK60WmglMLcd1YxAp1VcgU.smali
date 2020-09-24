.class public final synthetic Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

.field private final synthetic f$1:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;->f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    iput-object p2, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;->f$1:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;->f$0:Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$A7UobwK60WmglMLcd1YxAp1VcgU;->f$1:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->lambda$sendMsgs$1$SettingsFeatureProxyManager(Landroid/content/Context;)V

    return-void
.end method
