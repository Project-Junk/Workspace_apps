.class public Lcom/coloros/systemui/volume/VolumeStatisticsUtil;
.super Ljava/lang/Object;
.source "VolumeStatisticsUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "20120"

.field private static final TAG:Ljava/lang/String; = "VolumeStatisticsUtil"

.field private static final VOLUME_BOOST_ID:Ljava/lang/String; = "volume_boost_id"

.field private static final VOLUME_BOOST_KEY:Ljava/lang/String; = "volume_boost_key"

.field private static final VOLUME_EVENT_ID:Ljava/lang/String; = "volume_panel"

.field private static final VOLUME_KEY_STATUS:Ljava/lang/String; = "volume_panel_switch_status"

.field private static final VOLUME_KEY_TYPE:Ljava/lang/String; = "volume_key_type"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectVolumePanelEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "volume_key_type"

    .line 51
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "volume_panel_switch_status"

    .line 52
    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "20120"

    const-string p2, "volume_panel"

    const/4 v1, 0x0

    .line 53
    invoke-static {p0, p1, p2, v0, v1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 54
    sget-object p0, Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;->INSTANCE:Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;

    invoke-interface {v0, p0}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public static collectVolumeboostState(Landroid/content/Context;Z)V
    .locals 3

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "volume_boost_key"

    .line 45
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    const-string v1, "20120"

    const-string v2, "volume_boost_id"

    .line 46
    invoke-static {p0, v1, v2, v0, p1}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method static synthetic lambda$collectVolumePanelEvent$0(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " and value= "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Volume"

    const-string v0, "VolumeStatisticsUtil"

    invoke-static {p1, v0, p0}, Lcom/coloros/common/util/LogUtil;->internal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
