.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$4wB0Vb4Dc_gcVBcinktXXEXgBNI;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    invoke-static {p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->lambda$getAllowedMccMncsForLocationRestrictedScan$1(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
