.class public final synthetic Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;

    invoke-direct {v0}, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;-><init>()V

    sput-object v0, Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;->INSTANCE:Lcom/android/systemui/qs/external/-$$Lambda$TileServices$Lg27aAn4hq-sUnglRCmiW1zJ7sc;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/qs/external/TileServiceManager;

    invoke-static {p1}, Lcom/android/systemui/qs/external/TileServices;->lambda$destroy$1(Lcom/android/systemui/qs/external/TileServiceManager;)V

    return-void
.end method
