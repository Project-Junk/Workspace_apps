.class public final synthetic Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;

    invoke-direct {v0}, Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;->INSTANCE:Lcom/android/internal/telephony/-$$Lambda$OXXtpNvVeJw7E7y9hLioSYgFy9A;

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

    check-cast p1, Landroid/telephony/CellInfo;

    invoke-virtual {p1}, Landroid/telephony/CellInfo;->sanitizeLocationInfo()Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method
