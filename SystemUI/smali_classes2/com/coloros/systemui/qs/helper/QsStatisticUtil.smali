.class public Lcom/coloros/systemui/qs/helper/QsStatisticUtil;
.super Ljava/lang/Object;
.source "QsStatisticUtil.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "20082"

.field private static final SHORTCUTS_EVENT_ID:Ljava/lang/String; = "shortcuts_center"

.field private static final SHORTCUTS_KEY_ACTIVATE:Ljava/lang/String; = "shortcuts_activate"

.field private static final SHORTCUTS_KEY_ENTRANCE:Ljava/lang/String; = "shortcuts_entrance"

.field private static final SHORTCUTS_KEY_STATUS:Ljava/lang/String; = "shortcuts_switch_status"

.field private static final TAG:Ljava/lang/String; = "QsStatisticUtil"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "-1"

    .line 38
    invoke-static {p0, p1, v0}, Lcom/coloros/systemui/qs/helper/QsStatisticUtil;->collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static collectShortcutsCenterEvent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "shortcuts_activate"

    .line 42
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "shortcuts_switch_status"

    .line 43
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "20082"

    const-string v2, "shortcuts_center"

    const/4 v3, 0x0

    .line 44
    invoke-static {p0, v1, v2, v0, v3}, Lcom/oppo/statistics/NearMeStatistics;->onCommon(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    .line 45
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "collectShortcutsCenterEvent target "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " status "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Statusbar"

    const-string p2, "QsStatisticUtil"

    invoke-static {p1, p2, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
