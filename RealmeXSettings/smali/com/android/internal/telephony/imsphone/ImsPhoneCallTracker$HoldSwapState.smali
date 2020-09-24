.class final enum Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
.super Ljava/lang/Enum;
.source "ImsPhoneCallTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "HoldSwapState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum ENDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

.field public static final enum SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 309
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v1, 0x0

    const-string v2, "INACTIVE"

    invoke-direct {v0, v2, v1}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 311
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v2, 0x1

    const-string v3, "PENDING_SINGLE_CALL_HOLD"

    invoke-direct {v0, v3, v2}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 313
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v3, 0x2

    const-string v4, "PENDING_SINGLE_CALL_UNHOLD"

    invoke-direct {v0, v4, v3}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 315
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v4, 0x3

    const-string v5, "SWAPPING_ACTIVE_AND_HELD"

    invoke-direct {v0, v5, v4}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 317
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v5, 0x4

    const-string v6, "HOLDING_TO_ANSWER_INCOMING"

    invoke-direct {v0, v6, v5}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 319
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v6, 0x5

    const-string v7, "PENDING_RESUME_FOREGROUND_AFTER_FAILURE"

    invoke-direct {v0, v7, v6}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 321
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v7, 0x6

    const-string v8, "HOLDING_TO_DIAL_OUTGOING"

    invoke-direct {v0, v8, v7}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    .line 323
    new-instance v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/4 v8, 0x7

    const-string v9, "ENDING_TO_DIAL_OUTGOING"

    invoke-direct {v0, v9, v8}, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->ENDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    const/16 v0, 0x8

    .line 307
    new-array v0, v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    sget-object v9, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->INACTIVE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v9, v0, v1

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_HOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_SINGLE_CALL_UNHOLD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->SWAPPING_ACTIVE_AND_HELD:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_ANSWER_INCOMING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->PENDING_RESUME_FOREGROUND_AFTER_FAILURE:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->HOLDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->ENDING_TO_DIAL_OUTGOING:Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    aput-object v1, v0, v8

    sput-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->$VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 307
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .locals 1

    .line 307
    const-class v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object p0
.end method

.method public static values()[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;
    .locals 1

    .line 307
    sget-object v0, Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->$VALUES:[Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    invoke-virtual {v0}, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/internal/telephony/imsphone/ImsPhoneCallTracker$HoldSwapState;

    return-object v0
.end method
