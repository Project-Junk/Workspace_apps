.class public final Lcom/nearme/instant/router/f/a;
.super Ljava/lang/Object;


# static fields
.field private static final a:Ljava/lang/String; = "router_stat"

.field private static c:Lcom/nearme/instant/router/f/a;


# instance fields
.field private b:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

.field private d:Lcom/nearme/instant/router/Instant$IStatisticsProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/nearme/instant/router/f/a;

    invoke-direct {v0}, Lcom/nearme/instant/router/f/a;-><init>()V

    sput-object v0, Lcom/nearme/instant/router/f/a;->c:Lcom/nearme/instant/router/f/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nearme/instant/router/f/a;->b:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    new-instance v0, Lcom/nearme/instant/router/f/b;

    invoke-direct {v0, p0}, Lcom/nearme/instant/router/f/b;-><init>(Lcom/nearme/instant/router/f/a;)V

    iput-object v0, p0, Lcom/nearme/instant/router/f/a;->d:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    return-void
.end method

.method public static a()Lcom/nearme/instant/router/f/a;
    .locals 1

    sget-object v0, Lcom/nearme/instant/router/f/a;->c:Lcom/nearme/instant/router/f/a;

    return-object v0
.end method


# virtual methods
.method public final a(Lcom/nearme/instant/router/Instant$IStatisticsProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/nearme/instant/router/f/a;->b:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    return-void
.end method

.method public final b()Lcom/nearme/instant/router/Instant$IStatisticsProvider;
    .locals 1

    iget-object v0, p0, Lcom/nearme/instant/router/f/a;->b:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lcom/nearme/instant/router/f/a;->d:Lcom/nearme/instant/router/Instant$IStatisticsProvider;

    return-object p0
.end method
