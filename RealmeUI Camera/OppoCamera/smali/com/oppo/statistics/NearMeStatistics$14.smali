.class final Lcom/oppo/statistics/NearMeStatistics$14;
.super Ljava/lang/Object;
.source "NearMeStatistics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oppo/statistics/NearMeStatistics;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$duration:J

.field final synthetic val$eventID:Ljava/lang/String;

.field final synthetic val$eventMap:Ljava/util/Map;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$eventID:Ljava/lang/String;

    iput-object p3, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$eventMap:Ljava/util/Map;

    iput-wide p4, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$duration:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 512
    iget-object v0, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$eventID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$eventMap:Ljava/util/Map;

    iget-wide v3, p0, Lcom/oppo/statistics/NearMeStatistics$14;->val$duration:J

    invoke-static {v0, v1, v2, v3, v4}, Lcom/oppo/statistics/agent/OnEventAgent;->onKVEvent(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;J)V

    return-void
.end method
