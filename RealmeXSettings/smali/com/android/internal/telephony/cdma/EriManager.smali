.class public Lcom/android/internal/telephony/cdma/EriManager;
.super Ljava/lang/Object;
.source "EriManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;,
        Lcom/android/internal/telephony/cdma/EriManager$EriFile;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field static final ERI_FROM_FILE_SYSTEM:I = 0x1

.field static final ERI_FROM_MODEM:I = 0x2

.field public static final ERI_FROM_XML:I = 0x0

.field private static final LOG_TAG:Ljava/lang/String; = "EriManager"

.field private static final VDBG:Z = false


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

.field private mEriFileSource:I

.field private mIsEriFileLoaded:Z

.field private final mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/Phone;I)V
    .locals 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 99
    iput v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 105
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 106
    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 107
    iput p2, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    .line 108
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {p1, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    return-void
.end method

.method private getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;
    .locals 8
    .annotation build Landroid/annotation/UnsupportedAppUsage;
    .end annotation

    .line 318
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    if-eqz v0, :cond_0

    .line 319
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 322
    new-instance p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p2, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p1, p0, p2, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    return-object p1

    :cond_0
    const v0, 0x1040632

    const v1, 0x1040636

    const v2, 0x1040631

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 427
    iget-boolean v6, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    const-string v7, "EriManager"

    if-nez v6, :cond_5

    const-string p1, "ERI File not loaded"

    .line 429
    invoke-static {v7, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-le p2, v3, :cond_1

    .line 432
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 435
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 436
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 419
    :pswitch_0
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040635

    .line 422
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 412
    :pswitch_1
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040634

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 405
    :pswitch_2
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040633

    .line 408
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 398
    :pswitch_3
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x104063d

    .line 401
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 391
    :pswitch_4
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x104063c

    .line 394
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 384
    :pswitch_5
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x104063b

    .line 387
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 377
    :pswitch_6
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x104063a

    .line 380
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 370
    :pswitch_7
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040639

    .line 373
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 363
    :pswitch_8
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040638

    .line 366
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 356
    :pswitch_9
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const v1, 0x1040637

    .line 359
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, p0, p1, v5, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 347
    :pswitch_a
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 350
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 340
    :pswitch_b
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 343
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v4, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :pswitch_c
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 336
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-eqz p2, :cond_4

    if-eq p2, v4, :cond_3

    if-eq p2, v3, :cond_2

    .line 465
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    const/4 p1, -0x1

    const-string v0, "ERI text"

    invoke-direct {p2, p0, p1, p1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto/16 :goto_0

    .line 457
    :cond_2
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 460
    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 461
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v3, v4, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_0

    .line 449
    :cond_3
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 452
    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 453
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v4, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_0

    .line 441
    :cond_4
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 444
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 445
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object p1

    .line 471
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;

    move-result-object v0

    if-nez p1, :cond_7

    if-nez v0, :cond_6

    .line 478
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "ERI defRoamInd "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " not found in ERI file ...on"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget-object p1, p0, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    .line 483
    invoke-virtual {p1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 484
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p0, v5, v5, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_0

    .line 490
    :cond_6
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget p1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, v0, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p2, p0, p1, v1, v0}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    goto :goto_0

    .line 497
    :cond_7
    new-instance p2, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    iget v0, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconIndex:I

    iget v1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->iconMode:I

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/EriInfo;->eriText:Ljava/lang/String;

    invoke-direct {p2, p0, v0, v1, p1}, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;-><init>(Lcom/android/internal/telephony/cdma/EriManager;IILjava/lang/String;)V

    :goto_0
    return-object p2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEriInfo(I)Lcom/android/internal/telephony/cdma/EriInfo;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cdma/EriInfo;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private loadEriFileFromFileSystem()V
    .locals 0

    return-void
.end method

.method private loadEriFileFromModem()V
    .locals 0

    return-void
.end method

.method private loadEriFileFromXml()V
    .locals 17

    move-object/from16 v1, p0

    const-string v2, "CallPromptId"

    const-string v3, "EriManager"

    .line 161
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v4, 0x0

    :try_start_0
    const-string v5, "loadEriFileFromXml: check for alternate file"

    .line 164
    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    new-instance v5, Ljava/io/FileInputStream;

    const v6, 0x104007d

    .line 166
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    .line 168
    invoke-interface {v0, v5, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    const-string v6, "loadEriFileFromXml: opened alternate file"

    .line 169
    invoke-static {v3, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v5

    move-object v5, v0

    goto :goto_1

    :catch_0
    move-object v5, v4

    :catch_1
    const-string v0, "loadEriFileFromXml: no parser for alternate file"

    .line 174
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_2
    move-object v5, v4

    :catch_3
    const-string v0, "loadEriFileFromXml: no alternate file"

    .line 171
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    move-object v6, v5

    move-object v5, v4

    :goto_1
    if-nez v5, :cond_2

    .line 181
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    const-string v7, "carrier_config"

    .line 182
    invoke-virtual {v0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    if-eqz v0, :cond_0

    .line 184
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v7}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v7, "carrier_eri_file_name_string"

    .line 186
    invoke-virtual {v0, v7}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_2

    :cond_0
    move-object v7, v4

    .line 190
    :goto_2
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v8, "eriFile = "

    invoke-virtual {v8, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v7, :cond_1

    const-string v0, "loadEriFileFromXml: Can\'t find ERI file to load"

    .line 193
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 198
    :cond_1
    :try_start_2
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v5

    .line 199
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {v5, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_3

    :catch_5
    move-exception v0

    .line 201
    :goto_3
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "loadEriFileFromXml: no parser for "

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ". Exception = "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_4
    :try_start_3
    const-string v0, "EriFile"

    .line 207
    invoke-static {v5, v0}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 208
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "VersionNumber"

    .line 209
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    .line 210
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "NumberOfEriEntries"

    .line 211
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 210
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    .line 212
    iget-object v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const-string v7, "EriFileType"

    .line 213
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 212
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    const/4 v0, 0x0

    .line 217
    :cond_3
    :goto_5
    invoke-static {v5}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 218
    invoke-interface {v5}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_7

    .line 220
    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    if-eq v0, v2, :cond_4

    .line 221
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "Error Parsing ERI file: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v4, v4, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " defined, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " parsed!"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loadEriFileFromXml: eri parsing successful, file loaded. ver = "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", # of entries = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v2, v2, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 251
    iput-boolean v0, v1, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 256
    instance-of v0, v5, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_5

    .line 257
    check-cast v5, Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    if-eqz v6, :cond_6

    .line 261
    :try_start_4
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_6

    nop

    :catch_6
    :cond_6
    return-void

    .line 224
    :cond_7
    :try_start_5
    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v7, "Id"

    .line 225
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "CallPromptText"

    .line 226
    invoke-interface {v5, v4, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-ltz v7, :cond_8

    const/4 v9, 0x2

    if-gt v7, v9, :cond_8

    .line 228
    iget-object v9, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v9, v9, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mCallPromptId:[Ljava/lang/String;

    aput-object v8, v9, v7

    goto/16 :goto_5

    .line 230
    :cond_8
    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "Error Parsing ERI file: found"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " CallPromptId"

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :cond_9
    const-string v8, "EriInfo"

    .line 233
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "RoamingIndicator"

    .line 235
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 234
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const-string v7, "IconIndex"

    .line 236
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v7, "IconMode"

    .line 237
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const-string v7, "EriText"

    .line 238
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 240
    invoke-interface {v5, v4, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 239
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    const-string v7, "AlertId"

    .line 241
    invoke-interface {v5, v4, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v0, v0, 0x1

    .line 243
    iget-object v7, v1, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget-object v7, v7, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mRoamIndTable:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    new-instance v8, Lcom/android/internal/telephony/cdma/EriInfo;

    move-object/from16 v16, v8

    move-object/from16 v8, v16

    invoke-direct/range {v8 .. v14}, Lcom/android/internal/telephony/cdma/EriInfo;-><init>(IIILjava/lang/String;II)V

    invoke-virtual {v7, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_7
    move-exception v0

    :try_start_6
    const-string v2, "Got exception while loading ERI file."

    .line 254
    invoke-static {v3, v2, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 256
    instance-of v0, v5, Landroid/content/res/XmlResourceParser;

    if-eqz v0, :cond_a

    .line 257
    check-cast v5, Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_a
    if-eqz v6, :cond_b

    .line 261
    :try_start_7
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_8

    nop

    :catch_8
    :cond_b
    return-void

    .line 256
    :goto_6
    instance-of v2, v5, Landroid/content/res/XmlResourceParser;

    if-eqz v2, :cond_c

    .line 257
    check-cast v5, Landroid/content/res/XmlResourceParser;

    invoke-interface {v5}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_c
    if-eqz v6, :cond_d

    .line 261
    :try_start_8
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_9

    .line 265
    :catch_9
    :cond_d
    throw v0
.end method


# virtual methods
.method public dispose()V
    .locals 1

    .line 112
    new-instance v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cdma/EriManager$EriFile;-><init>(Lcom/android/internal/telephony/cdma/EriManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    const/4 v0, 0x0

    .line 113
    iput-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return-void
.end method

.method public getCdmaEriIconIndex(II)I
    .locals 0

    .line 510
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconIndex:I

    return p1
.end method

.method public getCdmaEriIconMode(II)I
    .locals 0

    .line 514
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p1

    iget p1, p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconMode:I

    return p1
.end method

.method public getCdmaEriText(II)Ljava/lang/String;
    .locals 0

    .line 518
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/cdma/EriManager;->getEriDisplayInformation(II)Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;

    move-result-object p1

    iget-object p1, p1, Lcom/android/internal/telephony/cdma/EriManager$EriDisplayInformation;->mEriIconText:Ljava/lang/String;

    return-object p1
.end method

.method public getEriFileType()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mEriFileType:I

    return v0
.end method

.method public getEriFileVersion()I
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mVersionNumber:I

    return v0
.end method

.method public getEriNumberOfEntries()I
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFile:Lcom/android/internal/telephony/cdma/EriManager$EriFile;

    iget v0, v0, Lcom/android/internal/telephony/cdma/EriManager$EriFile;->mNumberOfEriEntries:I

    return v0
.end method

.method public isEriFileLoaded()Z
    .locals 1

    .line 298
    iget-boolean v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mIsEriFileLoaded:Z

    return v0
.end method

.method public loadEriFile()V
    .locals 2

    .line 118
    iget v0, p0, Lcom/android/internal/telephony/cdma/EriManager;->mEriFileSource:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 129
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromXml()V

    return-void

    .line 120
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromModem()V

    return-void

    .line 124
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/EriManager;->loadEriFileFromFileSystem()V

    return-void
.end method
