.class public Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;
.super Ljava/lang/Object;
.source "DataConnectionReasons.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;,
        Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;
    }
.end annotation


# instance fields
.field private mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

.field private mDataDisallowedReasonSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    .line 26
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-void
.end method


# virtual methods
.method add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    .line 44
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->ordinal()I

    move-result v1

    if-le v0, v1, :cond_0

    .line 45
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    :cond_0
    return-void
.end method

.method add(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)V
    .locals 1

    .line 33
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;->NONE:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    .line 34
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method allowed()Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z
    .locals 1

    .line 74
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method containsHardDisallowedReasons()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 93
    invoke-virtual {v1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;->isHardReason()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public containsOnly(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->contains(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;)Z

    move-result p1

    if-eqz p1, :cond_0

    return v1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method copyFrom(Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;)V
    .locals 1

    .line 65
    iget-object v0, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    .line 66
    iget-object p1, p1, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 52
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    const-string v2, " "

    if-lez v1, :cond_0

    const-string v1, "Data disallowed, reasons:"

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataDisallowedReasonSet:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataDisallowedReasonType;

    .line 55
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "Data allowed, reason:"

    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DataConnectionReasons;->mDataAllowedReason:Lcom/android/internal/telephony/dataconnection/DataConnectionReasons$DataAllowedReasonType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
