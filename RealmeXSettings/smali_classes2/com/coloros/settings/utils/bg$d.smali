.class public final Lcom/coloros/settings/utils/bg$d;
.super Lcom/coloros/settings/utils/bg;
.source "SwitchBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/settings/utils/bg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# static fields
.field private static c:Ljava/lang/Boolean;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 78
    invoke-direct {p0}, Lcom/coloros/settings/utils/bg;-><init>()V

    .line 79
    sget-object v0, Lcom/coloros/settings/utils/-$$Lambda$bg$d$FlIqYdg4PzJeuYN6cv1wGolKMCw;->INSTANCE:Lcom/coloros/settings/utils/-$$Lambda$bg$d$FlIqYdg4PzJeuYN6cv1wGolKMCw;

    .line 1046
    iput-object v0, p0, Lcom/coloros/settings/utils/bg;->b:Lcom/coloros/settings/utils/bg$c;

    return-void
.end method

.method public static b()Lcom/coloros/settings/utils/bg$d;
    .locals 1

    .line 75
    new-instance v0, Lcom/coloros/settings/utils/bg$d;

    invoke-direct {v0}, Lcom/coloros/settings/utils/bg$d;-><init>()V

    return-object v0
.end method

.method private static c()Z
    .locals 3

    .line 93
    sget-object v0, Lcom/coloros/settings/utils/bg$d;->c:Ljava/lang/Boolean;

    const-string v1, "validBrand"

    if-nez v0, :cond_0

    const-string v0, "isRealme is null"

    .line 94
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-static {}, Lcom/coloros/settings/utils/al;->k()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/coloros/settings/utils/bg$d;->c:Ljava/lang/Boolean;

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "isRealme:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/coloros/settings/utils/bg$d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    sget-object v0, Lcom/coloros/settings/utils/bg$d;->c:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static synthetic lambda$FlIqYdg4PzJeuYN6cv1wGolKMCw()Z
    .locals 1

    invoke-static {}, Lcom/coloros/settings/utils/bg$d;->c()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final a(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;
    .locals 1

    const/16 v0, 0xff

    .line 83
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/utils/bg$d;->a(ILcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg;

    return-object p0
.end method

.method public final b(Lcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg$d;
    .locals 1

    const/16 v0, 0x7f

    .line 88
    invoke-virtual {p0, v0, p1}, Lcom/coloros/settings/utils/bg$d;->a(ILcom/coloros/settings/utils/bg$a;)Lcom/coloros/settings/utils/bg;

    return-object p0
.end method
