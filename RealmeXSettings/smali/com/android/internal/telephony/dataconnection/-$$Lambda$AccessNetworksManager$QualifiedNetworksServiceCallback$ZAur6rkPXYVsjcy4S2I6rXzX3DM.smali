.class public final synthetic Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$QualifiedNetworksServiceCallback$ZAur6rkPXYVsjcy4S2I6rXzX3DM;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 0

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager$QualifiedNetworksServiceCallback;->lambda$onQualifiedNetworkTypesChanged$0(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
