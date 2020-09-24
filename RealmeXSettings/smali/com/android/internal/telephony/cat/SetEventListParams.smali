.class Lcom/android/internal/telephony/cat/SetEventListParams;
.super Lcom/android/internal/telephony/cat/CommandParams;
.source "CommandParams.java"


# instance fields
.field mEventInfo:[I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/CommandDetails;[I)V
    .locals 0

    .line 106
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/CommandParams;-><init>(Lcom/android/internal/telephony/cat/CommandDetails;)V

    .line 107
    iput-object p2, p0, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    return-void
.end method
