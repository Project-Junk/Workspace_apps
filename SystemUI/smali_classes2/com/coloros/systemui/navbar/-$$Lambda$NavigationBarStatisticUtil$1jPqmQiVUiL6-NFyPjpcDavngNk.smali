.class public final synthetic Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;

    invoke-direct {v0}, Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;-><init>()V

    sput-object v0, Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;->INSTANCE:Lcom/coloros/systemui/navbar/-$$Lambda$NavigationBarStatisticUtil$1jPqmQiVUiL6-NFyPjpcDavngNk;

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

    invoke-static {p1, p2}, Lcom/coloros/systemui/navbar/NavigationBarStatisticUtil;->lambda$collectSideGestureTriggerBack$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
