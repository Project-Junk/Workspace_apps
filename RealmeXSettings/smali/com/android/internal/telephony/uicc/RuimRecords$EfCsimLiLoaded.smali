.class Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;
.super Ljava/lang/Object;
.source "RuimRecords.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccRecords$IccRecordLoaded;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/RuimRecords;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EfCsimLiLoaded"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/uicc/RuimRecords;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/uicc/RuimRecords;Lcom/android/internal/telephony/uicc/RuimRecords$1;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;-><init>(Lcom/android/internal/telephony/uicc/RuimRecords;)V

    return-void
.end method


# virtual methods
.method public getEfName()Ljava/lang/String;
    .locals 1

    const-string v0, "EF_CSIM_LI"

    return-object v0
.end method

.method public onRecordLoaded(Landroid/os/AsyncResult;)V
    .locals 4

    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, [B

    invoke-static {v0, p1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$102(Lcom/android/internal/telephony/uicc/RuimRecords;[B)[B

    const/4 p1, 0x0

    .line 272
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    array-length v0, v0

    if-ge p1, v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    const/16 v2, 0x68

    const/16 v3, 0x65

    packed-switch v0, :pswitch_data_0

    .line 281
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x20

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, v1

    goto/16 :goto_1

    .line 280
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, v1

    goto/16 :goto_1

    .line 279
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v3, 0x7a

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v2, v0, v1

    goto :goto_1

    .line 278
    :pswitch_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6b

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6f

    aput-byte v2, v0, v1

    goto :goto_1

    .line 277
    :pswitch_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6a

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x61

    aput-byte v2, v0, v1

    goto :goto_1

    .line 276
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x73

    aput-byte v2, v0, v1

    goto :goto_1

    .line 275
    :pswitch_5
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x66

    aput-byte v2, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x72

    aput-byte v2, v0, v1

    goto :goto_1

    .line 274
    :pswitch_6
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    aput-byte v3, v0, p1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v0

    const/16 v2, 0x6e

    aput-byte v2, v0, v1

    :goto_1
    add-int/lit8 p1, p1, 0x2

    goto/16 :goto_0

    .line 285
    :cond_0
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "EF_LI="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/RuimRecords$EfCsimLiLoaded;->this$0:Lcom/android/internal/telephony/uicc/RuimRecords;

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/RuimRecords;->access$100(Lcom/android/internal/telephony/uicc/RuimRecords;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/uicc/RuimRecords;->log(Ljava/lang/String;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
