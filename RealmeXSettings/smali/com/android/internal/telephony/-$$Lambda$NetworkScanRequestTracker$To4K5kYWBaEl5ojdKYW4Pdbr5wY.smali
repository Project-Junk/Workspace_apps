.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$To4K5kYWBaEl5ojdKYW4Pdbr5wY;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->lambda$getAllowedMccMncsForLocationRestrictedScan$0(Landroid/telephony/SubscriptionInfo;)Z

    move-result p1

    return p1
.end method
