.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$t4beO2UM1qrza874PCAhdizxWf8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$t4beO2UM1qrza874PCAhdizxWf8;->f$0:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/telephony/-$$Lambda$NetworkScanRequestTracker$t4beO2UM1qrza874PCAhdizxWf8;->f$0:Ljava/util/List;

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-static {v0, p1}, Lcom/android/internal/telephony/NetworkScanRequestTracker;->lambda$notifyMessenger$3(Ljava/util/List;Landroid/telephony/CellInfo;)Z

    move-result p1

    return p1
.end method
