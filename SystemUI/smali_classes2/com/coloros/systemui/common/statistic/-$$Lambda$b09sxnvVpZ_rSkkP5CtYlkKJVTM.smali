.class public final synthetic Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Supplier;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;

    invoke-direct {v0}, Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;-><init>()V

    sput-object v0, Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;->INSTANCE:Lcom/coloros/systemui/common/statistic/-$$Lambda$b09sxnvVpZ_rSkkP5CtYlkKJVTM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    return-object p0
.end method
