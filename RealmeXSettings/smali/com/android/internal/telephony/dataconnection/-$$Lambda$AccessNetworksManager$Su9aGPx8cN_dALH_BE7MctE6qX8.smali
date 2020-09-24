.class public final synthetic Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/IntFunction;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;

    invoke-direct {v0}, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;->INSTANCE:Lcom/android/internal/telephony/dataconnection/-$$Lambda$AccessNetworksManager$Su9aGPx8cN_dALH_BE7MctE6qX8;

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

    invoke-static {p1}, Lcom/android/internal/telephony/dataconnection/AccessNetworksManager;->lambda$dump$0(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
