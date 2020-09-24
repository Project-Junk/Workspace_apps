.class public Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;
.super Ljava/lang/Object;
.source "AnswerToReset.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AnswerToReset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InterfaceByte"
.end annotation


# instance fields
.field private mTA:Ljava/lang/Byte;

.field private mTB:Ljava/lang/Byte;

.field private mTC:Ljava/lang/Byte;

.field private mTD:Ljava/lang/Byte;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 382
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 383
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 384
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 385
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 386
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/AnswerToReset$1;)V
    .locals 0

    .line 340
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;Ljava/lang/Byte;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 391
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    .line 392
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 393
    iput-object p3, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 394
    iput-object p4, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 402
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_0

    .line 405
    :cond_1
    check-cast p1, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;

    .line 406
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTA()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    .line 407
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTB()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    .line 408
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTC()Ljava/lang/Byte;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    .line 409
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->getTD()Ljava/lang/Byte;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    :goto_0
    return v1
.end method

.method public getTA()Ljava/lang/Byte;
    .locals 1

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTB()Ljava/lang/Byte;
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTC()Ljava/lang/Byte;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    return-object v0
.end method

.method public getTD()Ljava/lang/Byte;
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x4

    .line 414
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setTA(Ljava/lang/Byte;)V
    .locals 0

    .line 367
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    return-void
.end method

.method public setTB(Ljava/lang/Byte;)V
    .locals 0

    .line 371
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    return-void
.end method

.method public setTC(Ljava/lang/Byte;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    return-void
.end method

.method public setTD(Ljava/lang/Byte;)V
    .locals 0

    .line 379
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 419
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v1, "{"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "TA="

    .line 421
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTA:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "TB="

    .line 422
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTB:Ljava/lang/Byte;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, "TC="

    .line 423
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTC:Ljava/lang/Byte;

    invoke-static {v2}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "TD="

    .line 424
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/AnswerToReset$InterfaceByte;->mTD:Ljava/lang/Byte;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/AnswerToReset;->access$200(Ljava/lang/Byte;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string/jumbo v1, "}"

    .line 425
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 426
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
