.class public final Lcom/color/darkmode/utils/StatisticsUtils;
.super Ljava/lang/Object;


# static fields
.field private static final EVENT_APPLICATION_MANAGER:Ljava/lang/String; = "dark_mode_application_manager"

.field private static final EVENT_SET_TIME:Ljava/lang/String; = "dark_mode_set_time"

.field private static final EVENT_SWITCH_OPEN:Ljava/lang/String; = "dark_mode_switch_open"

.field private static final FROM_WHERE_CONTROL_CENTER:Ljava/lang/String; = "1"

.field private static final FROM_WHERE_SETTING:Ljava/lang/String; = "2"

.field public static final INSTANCE:Lcom/color/darkmode/utils/StatisticsUtils;

.field private static final KEY_APPLICATION_NAME:Ljava/lang/String; = "application_name"

.field private static final KEY_CLOSE_TIME:Ljava/lang/String; = "close_time"

.field private static final KEY_FROM_WHERE:Ljava/lang/String; = "from_where"

.field private static final KEY_OPEN_TIME:Ljava/lang/String; = "open_time"

.field private static final KEY_SWITCH_STATUS:Ljava/lang/String; = "switch_status"

.field private static final SWITCH_STATUS_OFF:Ljava/lang/String; = "0"

.field private static final SWITCH_STATUS_ON:Ljava/lang/String; = "1"

.field private static final SYSTEM_ID:Ljava/lang/String; = "20130"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/color/darkmode/utils/StatisticsUtils;

    invoke-direct {v0}, Lcom/color/darkmode/utils/StatisticsUtils;-><init>()V

    sput-object v0, Lcom/color/darkmode/utils/StatisticsUtils;->INSTANCE:Lcom/color/darkmode/utils/StatisticsUtils;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final reportApplicationManager(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "application_name"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "switch_status"

    if-eqz p3, :cond_0

    const-string p3, "1"

    goto :goto_0

    :cond_0
    const-string p3, "0"

    :goto_0
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "dark_mode_application_manager"

    invoke-virtual {p0, p1, v0, p2}, Lcom/color/darkmode/utils/StatisticsUtils;->sendDataToDcs(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final reportSetTime(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "beginTime"

    invoke-static {p2, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "endTime"

    invoke-static {p3, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "open_time"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "close_time"

    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "dark_mode_set_time"

    invoke-virtual {p0, p1, v0, p2}, Lcom/color/darkmode/utils/StatisticsUtils;->sendDataToDcs(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final reportSwitchOpen(Landroid/content/Context;ZZ)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    check-cast v0, Ljava/util/Map;

    const-string v1, "switch_status"

    if-eqz p2, :cond_0

    const-string p2, "1"

    goto :goto_0

    :cond_0
    const-string p2, "0"

    :goto_0
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "from_where"

    if-eqz p3, :cond_1

    const-string p3, "2"

    goto :goto_1

    :cond_1
    const-string p3, "1"

    :goto_1
    invoke-interface {v0, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "dark_mode_switch_open"

    invoke-virtual {p0, p1, v0, p2}, Lcom/color/darkmode/utils/StatisticsUtils;->sendDataToDcs(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V

    return-void
.end method

.method public final sendDataToDcs(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "data"

    invoke-static {p2, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "eventId"

    invoke-static {p3, p0}, La/d/b/g;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "20130"

    const/4 v0, 0x0

    invoke-static {p1, p0, p3, p2, v0}, Lcom/oppo/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method
