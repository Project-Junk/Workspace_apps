.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

.field private final synthetic f$1:Lcom/android/internal/telephony/OperatorInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iput-object p2, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;->f$0:Lcom/android/settings/network/telephony/NetworkSelectSettings;

    iget-object v1, p0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkSelectSettings$2lYdfDfAG3nUplbutIPb1gnHNFM;->f$1:Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {v0, v1}, Lcom/android/settings/network/telephony/NetworkSelectSettings;->lambda$2lYdfDfAG3nUplbutIPb1gnHNFM(Lcom/android/settings/network/telephony/NetworkSelectSettings;Lcom/android/internal/telephony/OperatorInfo;)V

    return-void
.end method
