.class Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;
.super Ljava/lang/Object;
.source "UsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PbrRecord"
.end annotation


# instance fields
.field private mFileIds:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;",
            ">;"
        }
    .end annotation
.end field

.field private mMasterFileRecordNum:I

.field final synthetic this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;[B)V
    .locals 2

    .line 582
    iput-object p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 583
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PBR rec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    .line 586
    new-instance p1, Lcom/android/internal/telephony/gsm/SimTlv;

    array-length v0, p2

    const/4 v1, 0x0

    invoke-direct {p1, p2, v1, v0}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 587
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)Landroid/util/SparseArray;
    .locals 0

    .line 570
    iget-object p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;)I
    .locals 0

    .line 570
    iget p0, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;I)I
    .locals 0

    .line 570
    iput p1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mMasterFileRecordNum:I

    return p1
.end method


# virtual methods
.method parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 11

    const/4 v0, 0x0

    move v7, v0

    .line 614
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v8

    packed-switch v8, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    const/4 v1, -0x1

    .line 642
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v2

    .line 644
    array-length v3, v2

    const/4 v4, 0x2

    if-lt v3, v4, :cond_3

    array-length v3, v2

    const/4 v5, 0x3

    if-le v3, v5, :cond_1

    goto :goto_0

    .line 649
    :cond_1
    array-length v3, v2

    if-ne v3, v5, :cond_2

    .line 650
    aget-byte v1, v2, v4

    and-int/lit16 v1, v1, 0xff

    :cond_2
    move v5, v1

    .line 653
    aget-byte v1, v2, v0

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    const/4 v3, 0x1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    or-int v4, v1, v2

    .line 655
    iget-object v9, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->mFileIds:Landroid/util/SparseArray;

    new-instance v10, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    move-object v1, v10

    move v3, p2

    move v6, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$File;-><init>(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;IIII)V

    invoke-virtual {v9, v8, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 645
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->this$0:Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Invalid TLV length: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;->access$200(Lcom/android/internal/telephony/gsm/UsimPhoneBookManager;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    .line 659
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;)V
    .locals 5

    .line 596
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 601
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 602
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v3, 0x0

    array-length v4, v1

    invoke-direct {v2, v1, v3, v4}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 603
    invoke-virtual {p0, v2, v0}, Lcom/android/internal/telephony/gsm/UsimPhoneBookManager$PbrRecord;->parseEfAndSFI(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 606
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
