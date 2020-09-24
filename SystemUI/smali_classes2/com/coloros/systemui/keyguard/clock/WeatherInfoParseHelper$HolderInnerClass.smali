.class Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$HolderInnerClass;
.super Ljava/lang/Object;
.source "WeatherInfoParseHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HolderInnerClass"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;-><init>(Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$1;)V

    sput-object v0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$HolderInnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;
    .locals 1

    .line 54
    sget-object v0, Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper$HolderInnerClass;->INSTANCE:Lcom/coloros/systemui/keyguard/clock/WeatherInfoParseHelper;

    return-object v0
.end method
