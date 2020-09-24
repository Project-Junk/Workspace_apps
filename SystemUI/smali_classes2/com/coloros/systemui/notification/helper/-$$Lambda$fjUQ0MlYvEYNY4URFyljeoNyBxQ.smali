.class public final synthetic Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/coloros/systemui/notification/helper/NotificationCenterHelper$SmallAppGetter;


# static fields
.field public static final synthetic INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;

    invoke-direct {v0}, Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;-><init>()V

    sput-object v0, Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;->INSTANCE:Lcom/coloros/systemui/notification/helper/-$$Lambda$fjUQ0MlYvEYNY4URFyljeoNyBxQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/coloros/systemui/notification/smallApp/SmallApp;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p1}, Lcom/coloros/systemui/notification/smallApp/SmallApp;->isFold()Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
