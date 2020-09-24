.class final enum Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
.super Ljava/lang/Enum;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "RetryFailures"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

.field public static final enum ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

.field public static final enum ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1403
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const/4 v1, 0x0

    const-string v2, "ALWAYS"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    .line 1407
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const/4 v2, 0x1

    const-string v3, "ONLY_ON_CHANGE"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    const/4 v0, 0x2

    .line 1401
    new-array v0, v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ALWAYS:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    aput-object v3, v0, v1

    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->ONLY_ON_CHANGE:Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1401
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
    .locals 1

    .line 1401
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;
    .locals 1

    .line 1401
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/dataconnection/DcTracker$RetryFailures;

    return-object v0
.end method
