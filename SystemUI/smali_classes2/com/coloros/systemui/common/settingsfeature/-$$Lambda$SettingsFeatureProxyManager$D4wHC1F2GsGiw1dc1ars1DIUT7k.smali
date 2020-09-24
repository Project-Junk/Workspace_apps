.class public final synthetic Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;

.field private final synthetic f$1:Landroid/content/Context;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$0:Ljava/lang/String;

    iput-object p2, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$0:Ljava/lang/String;

    iget-object v1, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/coloros/systemui/common/settingsfeature/-$$Lambda$SettingsFeatureProxyManager$D4wHC1F2GsGiw1dc1ars1DIUT7k;->f$2:Ljava/lang/String;

    check-cast p1, Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;

    invoke-static {v0, v1, p0, p1}, Lcom/coloros/systemui/common/settingsfeature/SettingsFeatureProxyManager;->lambda$null$2(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;Lcom/coloros/systemui/common/settingsfeature/AbsSettingsFeatureProxy;)Z

    move-result p0

    return p0
.end method
