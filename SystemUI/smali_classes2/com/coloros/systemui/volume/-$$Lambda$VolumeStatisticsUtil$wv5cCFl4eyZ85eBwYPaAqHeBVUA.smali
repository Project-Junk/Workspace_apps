.class public final synthetic Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;

    invoke-direct {v0}, Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;-><init>()V

    sput-object v0, Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;->INSTANCE:Lcom/coloros/systemui/volume/-$$Lambda$VolumeStatisticsUtil$wv5cCFl4eyZ85eBwYPaAqHeBVUA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/coloros/systemui/volume/VolumeStatisticsUtil;->lambda$collectVolumePanelEvent$0(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
