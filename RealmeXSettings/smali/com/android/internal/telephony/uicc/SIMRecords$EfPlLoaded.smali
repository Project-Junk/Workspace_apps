.class Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;
.super Ljava/lang/Object;
.source "SIMRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/SIMRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EfPlLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/SIMRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V
    .locals 0

    .line 1254
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/SIMRecords;Lcom/android/internal/telephony/uicc/SIMRecords$1;)V
    .locals 0

    .line 1254
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;-><init>(Lcom/android/internal/telephony/uicc/SIMRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    const-string v0, "EF_PL"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 2

    .line 1260
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    iput-object p1, v0, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    .line 1261
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EF_PL="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/SIMRecords$EfPlLoaded;->this$0:Lcom/android/internal/telephony/uicc/SIMRecords;

    iget-object v1, v1, Lcom/android/internal/telephony/uicc/SIMRecords;->mEfPl:[B

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/SIMRecords;->log(Ljava/lang/String;)V

    return-void
.end method
