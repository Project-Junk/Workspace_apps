.class public Lcom/android/internal/telephony/uicc/UiccPkcs15;
.super Landroid/os/Handler;
.source "UiccPkcs15.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;,
        Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;
    }
.end annotation


# static fields
.field private static final CARRIER_RULE_AID:Ljava/lang/String; = "FFFFFFFFFFFF"

.field private static final DBG:Z = true

.field private static final EVENT_CLOSE_LOGICAL_CHANNEL_DONE:I = 0x7

.field private static final EVENT_LOAD_ACCF_DONE:I = 0x6

.field private static final EVENT_LOAD_ACMF_DONE:I = 0x4

.field private static final EVENT_LOAD_ACRF_DONE:I = 0x5

.field private static final EVENT_LOAD_DODF_DONE:I = 0x3

.field private static final EVENT_LOAD_ODF_DONE:I = 0x2

.field private static final EVENT_SELECT_PKCS15_DONE:I = 0x1

.field private static final ID_ACRF:Ljava/lang/String; = "4300"

.field private static final LOG_TAG:Ljava/lang/String; = "UiccPkcs15"

.field private static final TAG_ASN_OCTET_STRING:Ljava/lang/String; = "04"

.field private static final TAG_ASN_SEQUENCE:Ljava/lang/String; = "30"

.field private static final TAG_TARGET_AID:Ljava/lang/String; = "A0"


# instance fields
.field private mChannelId:I

.field private mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

.field private mLoadedCallback:Landroid/os/Message;

.field private mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

.field private mRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/UiccProfile;Landroid/os/Message;)V
    .locals 1

    .line 185
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 v0, -0x1

    .line 172
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    const/4 v0, 0x0

    .line 173
    iput-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    const-string v0, "Creating UiccPkcs15"

    .line 186
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 187
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    .line 188
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    .line 189
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Landroid/os/Message;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mPkcs15Selector:Lcom/android/internal/telephony/uicc/UiccPkcs15$Pkcs15Selector;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-static {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/telephony/uicc/UiccPkcs15;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/internal/telephony/uicc/UiccPkcs15;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/telephony/uicc/UiccPkcs15;)Lcom/android/internal/telephony/uicc/UiccProfile;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    return-object p0
.end method

.method private cleanUp()V
    .locals 3

    const-string v0, "cleanUp"

    .line 242
    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 243
    iget v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    if-ltz v0, :cond_0

    .line 244
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mUiccProfile:Lcom/android/internal/telephony/uicc/UiccProfile;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccProfile;->iccCloseLogicalChannel(ILandroid/os/Message;)V

    const/4 v0, -0x1

    .line 246
    iput v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mChannelId:I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "UiccPkcs15"

    .line 324
    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseAccf(Ljava/lang/String;)V
    .locals 3

    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 304
    new-instance v0, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v1, "30"

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 305
    new-instance v1, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v2, "04"

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 307
    :try_start_0
    invoke-virtual {v0, p1, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 308
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 309
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 313
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private parseAcrf(Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    const-string v0, "04"

    const-string v1, "A0"

    const/4 v2, 0x0

    .line 264
    :cond_0
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 265
    new-instance v3, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    const-string v4, "30"

    invoke-direct {v3, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 267
    :try_start_0
    invoke-virtual {v3, p1, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object p1

    .line 268
    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 269
    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 273
    new-instance v6, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v6, v1}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 274
    new-instance v7, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v7, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 275
    new-instance v8, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v8, v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 276
    new-instance v4, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;

    invoke-direct {v4, v0}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;-><init>(Ljava/lang/String;)V

    .line 280
    invoke-virtual {v6, v3, v5}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v7, v5, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    const-string v5, "FFFFFFFFFFFF"

    .line 285
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 286
    invoke-virtual {v8, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 287
    invoke-virtual {v8}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3, v6}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->parse(Ljava/lang/String;Z)Ljava/lang/String;

    .line 288
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCarrierPrivilegeRules$TLV;->getValue()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 293
    :goto_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Error: "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    :cond_1
    return-object v2
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 331
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    if-eqz p1, :cond_0

    const-string p1, " mRules:"

    .line 332
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 333
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 334
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "  "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 320
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "handleMessage: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 195
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 197
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    const/4 v3, 0x5

    if-eq v1, v2, :cond_6

    const/4 v2, 0x6

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_1

    const/4 v0, 0x7

    if-eq v1, v0, :cond_0

    .line 237
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Unknown event "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "UiccPkcs15"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void

    .line 226
    :cond_1
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_2

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_2

    .line 227
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAccf(Ljava/lang/String;)V

    .line 230
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    return-void

    .line 214
    :cond_3
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_5

    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz p1, :cond_5

    .line 215
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mRules:Ljava/util/List;

    .line 216
    iget-object p1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->parseAcrf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 218
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    :cond_4
    return-void

    .line 221
    :cond_5
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    return-void

    .line 199
    :cond_6
    iget-object p1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez p1, :cond_8

    .line 202
    new-instance p1, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p0, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;-><init>(Lcom/android/internal/telephony/uicc/UiccPkcs15;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    .line 203
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mFh:Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-string v1, "4300"

    invoke-virtual {p1, v1, v0}, Lcom/android/internal/telephony/uicc/UiccPkcs15$FileHandler;->loadFile(Ljava/lang/String;Landroid/os/Message;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 204
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->cleanUp()V

    :cond_7
    :goto_0
    return-void

    .line 207
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v1, "select pkcs15 failed: "

    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/telephony/uicc/UiccPkcs15;->log(Ljava/lang/String;)V

    .line 209
    iget-object p1, p0, Lcom/android/internal/telephony/uicc/UiccPkcs15;->mLoadedCallback:Landroid/os/Message;

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method
