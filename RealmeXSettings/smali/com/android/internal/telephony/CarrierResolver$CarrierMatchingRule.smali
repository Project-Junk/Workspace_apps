.class Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;
.super Ljava/lang/Object;
.source "CarrierResolver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CarrierMatchingRule"
.end annotation


# static fields
.field private static final SCORE_APN:I = 0x1

.field private static final SCORE_GID1:I = 0x20

.field private static final SCORE_GID2:I = 0x10

.field private static final SCORE_ICCID_PREFIX:I = 0x40

.field private static final SCORE_IMSI_PREFIX:I = 0x80

.field private static final SCORE_INVALID:I = -0x1

.field private static final SCORE_MCCMNC:I = 0x100

.field private static final SCORE_PLMN:I = 0x8

.field private static final SCORE_PRIVILEGE_ACCESS_RULE:I = 0x4

.field private static final SCORE_SPN:I = 0x2


# instance fields
.field private final mApn:Ljava/lang/String;

.field private mCid:I

.field private final mGid1:Ljava/lang/String;

.field private final mGid2:Ljava/lang/String;

.field private final mIccidPrefix:Ljava/lang/String;

.field private final mImsiPrefixPattern:Ljava/lang/String;

.field private final mMccMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mParentCid:I

.field private final mPlmn:Ljava/lang/String;

.field private final mPrivilegeAccessRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScore:I

.field private final mSpn:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V
    .locals 1

    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 536
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    .line 537
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    .line 538
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    .line 539
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    .line 540
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    .line 541
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    .line 542
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    .line 543
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    .line 544
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    .line 545
    iget v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    .line 546
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    .line 547
    iget p1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Lcom/android/internal/telephony/CarrierResolver$1;)V
    .locals 0

    .line 475
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 516
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 521
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    .line 522
    iput-object p2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    .line 523
    iput-object p3, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    .line 524
    iput-object p4, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    .line 525
    iput-object p5, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    .line 526
    iput-object p6, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    .line 527
    iput-object p7, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    .line 528
    iput-object p8, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    .line 529
    iput-object p9, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    .line 530
    iput p10, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    .line 531
    iput-object p11, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    .line 532
    iput p12, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;ILcom/android/internal/telephony/CarrierResolver$1;)V
    .locals 0

    .line 475
    invoke-direct/range {p0 .. p12}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ILjava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .locals 0

    .line 475
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .locals 0

    .line 475
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mParentCid:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)I
    .locals 0

    .line 475
    iget p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;I)I
    .locals 0

    .line 475
    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 475
    iput-object p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)Ljava/lang/String;
    .locals 0

    .line 475
    iget-object p0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    return-object p0
.end method

.method private carrierPrivilegeRulesMatch(Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 656
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 659
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 660
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 661
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 662
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v0
.end method

.method private gidMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 651
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 644
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    .line 626
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 627
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 628
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_2

    return v2

    :cond_2
    move v0, v2

    .line 631
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 632
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-eq v3, v4, :cond_3

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x58

    if-eq v3, v4, :cond_3

    .line 633
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v3, v4, :cond_3

    return v2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    return v1
.end method


# virtual methods
.method public match(Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;)V
    .locals 4

    const/4 v0, 0x0

    .line 556
    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 557
    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    const/4 v2, -0x1

    if-eqz v1, :cond_1

    .line 558
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    invoke-static {v3, v1, v0}, Lcom/android/internal/telephony/CarrierResolver;->access$300(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 559
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 562
    :cond_0
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit16 v0, v0, 0x100

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 564
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 565
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->imsiPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 566
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 569
    :cond_2
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 571
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 572
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->iccidPrefixMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 573
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 576
    :cond_4
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 578
    :cond_5
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    if-eqz v0, :cond_7

    .line 579
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 580
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 583
    :cond_6
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 585
    :cond_7
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    if-eqz v0, :cond_9

    .line 586
    iget-object v1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->gidMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 587
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 590
    :cond_8
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 592
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_b

    .line 593
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->access$300(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_a

    .line 594
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 597
    :cond_a
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 599
    :cond_b
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    if-eqz v0, :cond_d

    .line 600
    iget-object v3, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    invoke-static {v3, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->access$300(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_c

    .line 601
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 604
    :cond_c
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 607
    :cond_d
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 608
    iget-object v0, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    iget-object v3, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    invoke-direct {p0, v0, v3}, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->carrierPrivilegeRulesMatch(Ljava/util/List;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 610
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 613
    :cond_e
    iget v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    .line 616
    :cond_f
    iget-object v0, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    if-eqz v0, :cond_11

    .line 617
    iget-object p1, p1, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/android/internal/telephony/CarrierResolver;->access$300(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_10

    .line 618
    iput v2, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    return-void

    .line 621
    :cond_10
    iget p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    add-int/2addr p1, v1

    iput p1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    :cond_11
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 671
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CarrierMatchingRule] - mccmnc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mMccMnc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid1:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " gid2: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mGid2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " plmn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPlmn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " imsi_prefix: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mImsiPrefixPattern:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " iccid_prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mIccidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " spn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mSpn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " privilege_access_rule: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mPrivilegeAccessRule:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " apn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mApn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " name: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mCid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " score: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/CarrierResolver$CarrierMatchingRule;->mScore:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
