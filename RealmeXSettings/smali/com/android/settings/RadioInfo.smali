.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/RadioInfo$a;
    }
.end annotation


# static fields
.field private static final s:[Ljava/lang/String;

.field private static t:[Ljava/lang/String;

.field private static final u:[Ljava/lang/String;

.field private static final v:[I


# instance fields
.field private A:Landroid/widget/TextView;

.field private B:Landroid/widget/TextView;

.field private C:Landroid/widget/TextView;

.field private D:Landroid/widget/TextView;

.field private E:Landroid/widget/TextView;

.field private F:Landroid/widget/TextView;

.field private G:Landroid/widget/TextView;

.field private H:Landroid/widget/TextView;

.field private I:Landroid/widget/TextView;

.field private J:Landroid/widget/TextView;

.field private K:Landroid/widget/TextView;

.field private L:Landroid/widget/TextView;

.field private M:Landroid/widget/TextView;

.field private N:Landroid/widget/TextView;

.field private O:Landroid/widget/TextView;

.field private P:Landroid/widget/TextView;

.field private Q:Landroid/widget/TextView;

.field private R:Landroid/widget/TextView;

.field private S:Landroid/widget/TextView;

.field private T:Landroid/widget/TextView;

.field private U:Landroid/widget/TextView;

.field private V:Landroid/widget/TextView;

.field private W:Landroid/widget/EditText;

.field private X:Landroid/widget/Switch;

.field private Y:Landroid/widget/Button;

.field private Z:Landroid/widget/Button;

.field a:Landroid/telephony/TelephonyManager;

.field private aA:I

.field private final aB:Landroid/net/NetworkRequest;

.field private final aC:Landroid/net/ConnectivityManager$NetworkCallback;

.field private aD:Landroid/telephony/PhoneStateListener;

.field private aE:Landroid/os/Handler;

.field private aF:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aG:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aH:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aI:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aJ:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aK:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private aa:Landroid/widget/Button;

.field private ab:Landroid/widget/Button;

.field private ac:Landroid/widget/Button;

.field private ad:Landroid/widget/Button;

.field private ae:Landroid/widget/Button;

.field private af:Landroid/widget/Switch;

.field private ag:Landroid/widget/Switch;

.field private ah:Landroid/widget/Switch;

.field private ai:Landroid/widget/Switch;

.field private aj:Landroid/widget/Switch;

.field private ak:Landroid/widget/Switch;

.field private al:Lcom/coloros/settings/widget/ColorSpinner;

.field private am:Landroid/widget/Spinner;

.field private an:Landroid/widget/Spinner;

.field private ao:Landroid/net/ConnectivityManager;

.field private ap:Lcom/android/ims/e;

.field private aq:Lcom/android/internal/telephony/Phone;

.field private ar:Ljava/lang/String;

.field private as:Ljava/lang/String;

.field private at:Ljava/lang/String;

.field private au:Z

.field private av:Z

.field private aw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private ax:Landroid/telephony/CellLocation;

.field private ay:I

.field private az:I

.field b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field g:Landroid/view/View$OnClickListener;

.field h:Landroid/view/View$OnClickListener;

.field i:Landroid/view/View$OnClickListener;

.field j:Landroid/view/View$OnClickListener;

.field k:Landroid/view/View$OnClickListener;

.field l:Landroid/view/View$OnClickListener;

.field m:Landroid/view/View$OnClickListener;

.field n:Landroid/widget/AdapterView$OnItemClickListener;

.field o:Landroid/widget/AdapterView$OnItemSelectedListener;

.field p:Landroid/widget/AdapterView$OnItemSelectedListener;

.field q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field r:Landroid/content/DialogInterface$OnClickListener;

.field private w:Landroid/widget/TextView;

.field private x:Landroid/widget/TextView;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    const-string v0, "WCDMA preferred"

    const-string v1, "GSM only"

    const-string v2, "WCDMA only"

    const-string v3, "GSM auto (PRL)"

    const-string v4, "CDMA auto (PRL)"

    const-string v5, "CDMA only"

    const-string v6, "EvDo only"

    const-string v7, "Global auto (PRL)"

    const-string v8, "LTE/CDMA auto (PRL)"

    const-string v9, "LTE/UMTS auto (PRL)"

    const-string v10, "LTE/CDMA/UMTS auto (PRL)"

    const-string v11, "LTE only"

    const-string v12, "LTE/WCDMA"

    const-string v13, "TD-SCDMA only"

    const-string v14, "TD-SCDMA/WCDMA"

    const-string v15, "LTE/TD-SCDMA"

    const-string v16, "TD-SCDMA/GSM"

    const-string v17, "TD-SCDMA/UMTS"

    const-string v18, "LTE/TD-SCDMA/WCDMA"

    const-string v19, "LTE/TD-SCDMA/UMTS"

    const-string v20, "TD-SCDMA/CDMA/UMTS"

    const-string v21, "Global/TD-SCDMA"

    const-string v22, "Unknown"

    .line 106
    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    const-string v0, "Disabled"

    const-string v1, "Immediate"

    const-string v2, "Min 5s"

    const-string v3, "Min 10s"

    const-string v4, "Min 60s"

    .line 158
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->u:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 167
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RadioInfo;->v:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x1388
        0x2710
        0xea60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 3

    .line 103
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 241
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    .line 242
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    .line 247
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->au:Z

    .line 248
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->av:Z

    .line 250
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aw:Ljava/util/List;

    .line 251
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ax:Landroid/telephony/CellLocation;

    .line 257
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 258
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/16 v2, 0xc

    .line 259
    invoke-virtual {v0, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 260
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aB:Landroid/net/NetworkRequest;

    .line 262
    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aC:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 271
    new-instance v0, Lcom/android/settings/RadioInfo$a;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RadioInfo$a;-><init>(Lcom/android/settings/RadioInfo;B)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aD:Landroid/telephony/PhoneStateListener;

    .line 386
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aE:Landroid/os/Handler;

    .line 1264
    new-instance v0, Lcom/android/settings/RadioInfo$31;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$31;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1278
    new-instance v0, Lcom/android/settings/RadioInfo$32;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$32;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aG:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1292
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1307
    new-instance v0, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aI:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1341
    new-instance v0, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aJ:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1350
    new-instance v0, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aK:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1417
    new-instance v0, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1433
    new-instance v0, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1448
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1463
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1474
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1547
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->g:Landroid/view/View$OnClickListener;

    .line 1555
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->h:Landroid/view/View$OnClickListener;

    .line 1568
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->i:Landroid/view/View$OnClickListener;

    .line 1574
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->j:Landroid/view/View$OnClickListener;

    .line 1582
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->k:Landroid/view/View$OnClickListener;

    .line 1588
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->l:Landroid/view/View$OnClickListener;

    .line 1598
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->m:Landroid/view/View$OnClickListener;

    .line 1610
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->n:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1667
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->o:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1693
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->p:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1732
    new-instance v0, Lcom/android/settings/RadioInfo$25;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$25;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1770
    new-instance v0, Lcom/android/settings/RadioInfo$26;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$26;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->r:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method static synthetic A(Lcom/android/settings/RadioInfo;)V
    .locals 2

    .line 15200
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aE:Landroid/os/Handler;

    const/16 v1, 0x3ed

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic B(Lcom/android/settings/RadioInfo;)I
    .locals 0

    .line 103
    iget p0, p0, Lcom/android/settings/RadioInfo;->ay:I

    return p0
.end method

.method static synthetic C(Lcom/android/settings/RadioInfo;)Lcom/coloros/settings/widget/ColorSpinner;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    return-object p0
.end method

.method static synthetic D(Lcom/android/settings/RadioInfo;)V
    .locals 2

    .line 16205
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->M:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16206
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16208
    new-instance v0, Lcom/android/settings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$23;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 16215
    new-instance v1, Lcom/android/settings/RadioInfo$27;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$27;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 16224
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method static synthetic E(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aj:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic F(Lcom/android/settings/RadioInfo;)Landroid/widget/Switch;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic G(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->x()V

    return-void
.end method

.method private static a(I)Ljava/lang/String;
    .locals 1

    const v0, 0x7fffffff

    if-eq p0, v0, :cond_0

    .line 858
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private static a(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 3

    .line 870
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    const-string v0, "R"

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 873
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result p0

    if-eqz p0, :cond_3

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    const/4 v2, 0x2

    if-eq p0, v2, :cond_1

    move-object p0, v1

    goto :goto_1

    :cond_1
    const-string p0, "S"

    goto :goto_1

    :cond_2
    const-string p0, "P"

    goto :goto_1

    :cond_3
    const-string p0, "N"

    .line 880
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v1, "+"

    .line 884
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/util/List;)Ljava/lang/String;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 953
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0}, Ljava/lang/String;-><init>()V

    .line 954
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 955
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 956
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 957
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p0, :cond_8

    .line 960
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/16 v7, 0xb

    const/16 v9, 0x8

    const/4 v10, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/CellInfo;

    .line 962
    instance-of v8, v6, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_1

    .line 963
    check-cast v6, Landroid/telephony/CellInfoLte;

    .line 6919
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v8

    .line 6920
    invoke-virtual {v6}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v18

    .line 6922
    new-array v7, v7, [Ljava/lang/Object;

    .line 6924
    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v17

    .line 6925
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v16

    .line 6926
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v15

    .line 6927
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v14

    .line 6928
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v13

    .line 6929
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v12

    .line 6930
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v11

    .line 6931
    invoke-virtual {v8}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v10

    .line 6932
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v7, v9

    .line 6933
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v8, 0x9

    aput-object v6, v7, v8

    const/16 v6, 0xa

    .line 6934
    invoke-virtual/range {v18 .. v18}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result v8

    invoke-static {v8}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v6

    const-string v6, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    .line 6922
    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 963
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 964
    :cond_1
    instance-of v7, v6, Landroid/telephony/CellInfoWcdma;

    if-eqz v7, :cond_2

    .line 965
    check-cast v6, Landroid/telephony/CellInfoWcdma;

    .line 6938
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v7

    .line 6939
    invoke-virtual {v6}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v8

    .line 6941
    new-array v9, v9, [Ljava/lang/Object;

    .line 6942
    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v17

    .line 6943
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v16

    .line 6944
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v15

    .line 6945
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v14

    .line 6946
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v13

    .line 6947
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v12

    .line 6948
    invoke-virtual {v7}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v11

    .line 6949
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const-string v6, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    .line 6941
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 965
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 966
    :cond_2
    instance-of v7, v6, Landroid/telephony/CellInfoGsm;

    if-eqz v7, :cond_3

    .line 967
    check-cast v6, Landroid/telephony/CellInfoGsm;

    .line 7904
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v7

    .line 7905
    invoke-virtual {v6}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v8

    .line 7907
    new-array v9, v9, [Ljava/lang/Object;

    .line 7908
    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v17

    .line 7909
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v16

    .line 7910
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v15

    .line 7911
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v14

    .line 7912
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v13

    .line 7913
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v12

    .line 7914
    invoke-virtual {v7}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v11

    .line 7915
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    const-string v6, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    .line 7907
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 967
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 968
    :cond_3
    instance-of v7, v6, Landroid/telephony/CellInfoCdma;

    if-eqz v7, :cond_0

    .line 969
    check-cast v6, Landroid/telephony/CellInfoCdma;

    .line 8888
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v7

    .line 8889
    invoke-virtual {v6}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v8

    const/16 v9, 0x9

    .line 8891
    new-array v9, v9, [Ljava/lang/Object;

    .line 8892
    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v17

    .line 8893
    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v16

    .line 8894
    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v15

    .line 8895
    invoke-virtual {v7}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v14

    .line 8896
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v13

    .line 8897
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v12

    .line 8898
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v11

    .line 8899
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v10

    .line 8900
    invoke-virtual {v8}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result v6

    invoke-static {v6}, Lcom/android/settings/RadioInfo;->a(I)Ljava/lang/String;

    move-result-object v6

    const/16 v7, 0x8

    aput-object v6, v9, v7

    const-string v6, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    .line 8891
    invoke-static {v6, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 969
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 972
    :cond_4
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    const-string v6, "CID"

    const-string v8, "MNC"

    const-string v9, "MCC"

    const-string v19, "SRV"

    if-eqz v5, :cond_5

    .line 973
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v0, v7, [Ljava/lang/Object;

    aput-object v19, v0, v17

    aput-object v9, v0, v16

    aput-object v8, v0, v15

    const-string v7, "TAC"

    aput-object v7, v0, v14

    aput-object v6, v0, v13

    const-string v7, "PCI"

    aput-object v7, v0, v12

    const-string v7, "EARFCN"

    aput-object v7, v0, v11

    const-string v7, "BW"

    aput-object v7, v0, v10

    const-string v7, "RSRP"

    const/16 v18, 0x8

    aput-object v7, v0, v18

    const-string v7, "RSRQ"

    const/16 v20, 0x9

    aput-object v7, v0, v20

    const/16 v7, 0xa

    const-string v20, "TA"

    aput-object v20, v0, v7

    const-string v7, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 978
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 980
    :cond_5
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_6

    .line 981
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    new-array v5, v0, [Ljava/lang/Object;

    aput-object v19, v5, v17

    aput-object v9, v5, v16

    aput-object v8, v5, v15

    const-string v0, "LAC"

    aput-object v0, v5, v14

    aput-object v6, v5, v13

    const-string v0, "UARFCN"

    aput-object v0, v5, v12

    const-string v0, "PSC"

    aput-object v0, v5, v11

    const-string v0, "RSCP"

    aput-object v0, v5, v10

    const-string v0, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 984
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 986
    :cond_6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-eqz v3, :cond_7

    .line 987
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x8

    new-array v4, v0, [Ljava/lang/Object;

    aput-object v19, v4, v17

    aput-object v9, v4, v16

    aput-object v8, v4, v15

    const-string v0, "LAC"

    aput-object v0, v4, v14

    aput-object v6, v4, v13

    const-string v0, "ARFCN"

    aput-object v0, v4, v12

    const-string v0, "BSIC"

    aput-object v0, v4, v11

    const-string v0, "RSSI"

    aput-object v0, v4, v10

    const-string v0, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 990
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 992
    :cond_7
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-eqz v2, :cond_9

    .line 993
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v19, v0, v17

    const-string v3, "SID"

    aput-object v3, v0, v16

    const-string v3, "NID"

    aput-object v3, v0, v15

    const-string v3, "BSID"

    aput-object v3, v0, v14

    const-string v3, "C-RSSI"

    aput-object v3, v0, v13

    const-string v3, "C-ECIO"

    aput-object v3, v0, v12

    const-string v3, "E-RSSI"

    aput-object v3, v0, v11

    const-string v3, "E-ECIO"

    aput-object v3, v0, v10

    const-string v3, "E-SNR"

    const/16 v4, 0x8

    aput-object v3, v0, v4

    const-string v3, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 996
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string/jumbo v0, "unknown"

    .line 1002
    :cond_9
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->aw:Ljava/util/List;

    return-object p1
.end method

.method private a(II)V
    .locals 4

    const v0, 0x7fffffff

    const/4 v1, -0x1

    if-ltz p1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    move p1, v1

    :cond_1
    if-ltz p2, :cond_2

    if-ne p2, v0, :cond_3

    :cond_2
    move p2, v1

    .line 797
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->U:Landroid/widget/TextView;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "%-5d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 798
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->V:Landroid/widget/TextView;

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v3

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private final a(Landroid/telephony/CellLocation;)V
    .locals 9

    .line 819
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 820
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, -0x1

    const-string/jumbo v3, "unknown"

    if-eqz v1, :cond_2

    .line 821
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 822
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 823
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    .line 824
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f121171

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_0

    move-object v1, v3

    goto :goto_0

    .line 825
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f121168

    .line 827
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v2, :cond_1

    goto :goto_1

    .line 828
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 829
    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 830
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 831
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 832
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 833
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v4

    .line 834
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v5

    .line 835
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p1

    .line 836
    iget-object v6, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "BID = "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-ne v0, v2, :cond_3

    move-object v0, v3

    goto :goto_2

    .line 837
    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   SID = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v1, v2, :cond_4

    move-object v0, v3

    goto :goto_3

    .line 840
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   NID = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v4, v2, :cond_5

    move-object v0, v3

    goto :goto_4

    .line 843
    :cond_5
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nLAT = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne v5, v2, :cond_6

    move-object v0, v3

    goto :goto_5

    .line 846
    :cond_6
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   LONG = "

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p1, v2, :cond_7

    goto :goto_6

    .line 849
    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    :goto_6
    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 836
    invoke-virtual {v6, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 851
    :cond_8
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private synthetic a(Landroid/view/View;)V
    .locals 2

    .line 526
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->doesSwitchMultiSimConfigTriggerReboot()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 528
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/widget/Switch;->toggle()V

    .line 10740
    new-instance p1, Lcolor/support/v7/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Lcolor/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12086a

    .line 10741
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setTitle(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120869

    .line 10742
    invoke-virtual {p1, v0}, Lcolor/support/v7/app/AlertDialog$Builder;->setMessage(I)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120868

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 10743
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120867

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->r:Landroid/content/DialogInterface$OnClickListener;

    .line 10744
    invoke-virtual {p1, v0, v1}, Lcolor/support/v7/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcolor/support/v7/app/AlertDialog$Builder;

    move-result-object p1

    .line 10745
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog$Builder;->create()Lcolor/support/v7/app/AlertDialog;

    move-result-object p1

    .line 10746
    invoke-virtual {p1}, Lcolor/support/v7/app/AlertDialog;->show()V

    return-void

    .line 531
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->x()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->l()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;I)V
    .locals 3

    .line 11057
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12117f

    .line 11058
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const p1, 0x7f121177

    .line 11068
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    const p1, 0x7f121178

    .line 11065
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const p1, 0x7f121176

    .line 11062
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 11072
    :goto_0
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->B:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;II)V
    .locals 0

    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->a(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 4

    .line 12027
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 12028
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12117f

    .line 12029
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f12117d

    .line 12040
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f12117b

    .line 12037
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f12117c

    .line 12033
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 12044
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 12046
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12047
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->D:Landroid/widget/TextView;

    const v1, 0x7f121179

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 12049
    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->D:Landroid/widget/TextView;

    const v1, 0x7f12117a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 12052
    :goto_1
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->C:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 11804
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 11806
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 11808
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 11812
    :cond_0
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->I:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v3, 0x7f12116f

    .line 11813
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11814
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f12116d

    .line 11815
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11812
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/String;)V
    .locals 1

    const-string v0, "RadioInfo"

    .line 11176
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static a(Landroid/content/Context;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "carrier_config"

    .line 1503
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 1504
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string/jumbo v0, "use_rcs_presence_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic a(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->au:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->ax:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->m()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;I)V
    .locals 1

    .line 12357
    sget-object v0, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 12358
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "RadioInfo"

    .line 13176
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12360
    sget-object p1, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    .line 12362
    :cond_1
    iput p1, p0, Lcom/android/settings/RadioInfo;->ay:I

    .line 12366
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    iget p0, p0, Lcom/android/settings/RadioInfo;->ay:I

    invoke-virtual {p1, p0}, Lcom/coloros/settings/widget/ColorSpinner;->setSelection(I)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;II)V
    .locals 2

    .line 15373
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->f()V

    .line 15374
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 15377
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    .line 15380
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    .line 15381
    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 15383
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->e()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 103
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->b(Ljava/util/List;)V

    return-void
.end method

.method private final b(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 1006
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->M:Landroid/widget/TextView;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->a(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 103
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->av:Z

    return p1
.end method

.method static synthetic b()[Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/settings/RadioInfo;->ay:I

    return p1
.end method

.method static synthetic c(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->o()V

    return-void
.end method

.method static synthetic c(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 3

    .line 12343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{"

    .line 12345
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 12347
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 12348
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ","

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "}"

    .line 12352
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12353
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->S:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic c()[Ljava/lang/String;
    .locals 1

    .line 103
    sget-object v0, Lcom/android/settings/RadioInfo;->t:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/settings/RadioInfo;->aA:I

    return p1
.end method

.method static synthetic d(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->j()V

    return-void
.end method

.method static synthetic d()[I
    .locals 1

    .line 103
    sget-object v0, Lcom/android/settings/RadioInfo;->v:[I

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/settings/RadioInfo;->az:I

    return p1
.end method

.method private e()V
    .locals 4

    .line 589
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->j()V

    .line 590
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->k()V

    .line 591
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->l()V

    .line 592
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->o()V

    .line 593
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->q()V

    .line 594
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->v()V

    .line 595
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->n()V

    .line 596
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->h()V

    .line 597
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->m()V

    .line 599
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ax:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->a(Landroid/telephony/CellLocation;)V

    .line 600
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aw:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->b(Ljava/util/List;)V

    .line 601
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->i()V

    .line 603
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->an:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->p:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 609
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->an:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->az:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 613
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->ay:I

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/ColorSpinner;->setSelection(I)V

    .line 614
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->n:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/ColorSpinner;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 622
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->am:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->aA:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->am:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->o:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 625
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->X:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 626
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 627
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 629
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 631
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->w()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 632
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aj:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->a()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 633
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aj:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->q:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 636
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->f()V

    .line 637
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->g()V

    .line 639
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ao:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aB:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aC:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->aE:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->W:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    return-void
.end method

.method static synthetic e(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->k()V

    return-void
.end method

.method static synthetic f(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aw:Ljava/util/List;

    return-object p0
.end method

.method private f()V
    .locals 3

    .line 748
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aD:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 751
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->C:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 753
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->H:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->G:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 755
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->N:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->O:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->B:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 759
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->au:Z

    .line 760
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->J:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 761
    iput-boolean v2, p0, Lcom/android/settings/RadioInfo;->av:Z

    .line 762
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->K:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 763
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->M:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 764
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->I:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 765
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->E:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 766
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->D:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 767
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->S:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private g()V
    .locals 3

    .line 772
    new-instance v0, Lcom/android/settings/RadioInfo$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/RadioInfo$a;-><init>(Lcom/android/settings/RadioInfo;B)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aD:Landroid/telephony/PhoneStateListener;

    .line 773
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aD:Landroid/telephony/PhoneStateListener;

    const v2, 0x1005fd

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    return-void
.end method

.method static synthetic g(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->q()V

    return-void
.end method

.method private h()V
    .locals 2

    .line 790
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->T:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "0.0.0.0 allowed"

    goto :goto_0

    :cond_0
    const-string v1, "0.0.0.0 not allowed"

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic h(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->v()V

    return-void
.end method

.method static synthetic i(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->W:Landroid/widget/EditText;

    return-object p0
.end method

.method private final i()V
    .locals 2

    .line 1010
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->y:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1011
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->z:Landroid/widget/TextView;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic j(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aa:Landroid/widget/Button;

    return-object p0
.end method

.method private final j()V
    .locals 2

    .line 1016
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->J:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->au:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic k(Lcom/android/settings/RadioInfo;)Landroid/telephony/CellLocation;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->ax:Landroid/telephony/CellLocation;

    return-object p0
.end method

.method private final k()V
    .locals 2

    .line 1021
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->K:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->av:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic l(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method private final l()V
    .locals 4

    .line 1077
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 1078
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12117f

    .line 1079
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x7f12116c

    .line 1092
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    const v0, 0x7f121169

    .line 1083
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    const v0, 0x7f12116a

    .line 1086
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_3
    const v0, 0x7f12116b

    .line 1089
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1096
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->F:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic lambda$WebEYTVHi55KXt30Q284AeHPTz4(Lcom/android/settings/RadioInfo;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->a(Landroid/view/View;)V

    return-void
.end method

.method static synthetic m(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aE:Landroid/os/Handler;

    return-object p0
.end method

.method private final m()V
    .locals 2

    .line 1100
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 1101
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    .line 1102
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->H:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1103
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 1102
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1104
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->G:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1105
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 1104
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method static synthetic n(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    return-object p0
.end method

.method private final n()V
    .locals 4

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1114
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f12117f

    if-nez v1, :cond_0

    .line 1115
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1116
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->w:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1119
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1120
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->A:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1123
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    .line 1124
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1125
    :cond_2
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->x:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic o(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->P:Landroid/widget/TextView;

    return-object p0
.end method

.method private final o()V
    .locals 12

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1131
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 1132
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 1133
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 1134
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    const v9, 0x7f121170

    .line 1136
    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v10, 0x7f12116e

    .line 1137
    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1139
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->N:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1140
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->O:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic p(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    return-object p0
.end method

.method private p()Z
    .locals 2

    .line 1370
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic q(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->Q:Landroid/widget/TextView;

    return-object p0
.end method

.method private q()V
    .locals 2

    .line 1376
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->X:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1377
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->X:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1378
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->X:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->b:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method static synthetic r(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    return-object p0
.end method

.method private r()Z
    .locals 3

    .line 1426
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    if-eqz v2, :cond_0

    .line 1427
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1428
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic s(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->R:Landroid/widget/TextView;

    return-object p0
.end method

.method private s()Z
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    if-eqz v2, :cond_0

    .line 1442
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1443
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic t(Lcom/android/settings/RadioInfo;)V
    .locals 7

    const-string v0, "Pass"

    const-string v1, "Fail(%d)"

    const-string v2, "Fail: IOException"

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 14149
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 14150
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_0

    .line 14152
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    goto :goto_0

    .line 14154
    :cond_0
    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 14157
    :catch_0
    :try_start_1
    iput-object v2, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    .line 14160
    :goto_0
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    const-string v6, "ping6 -c 1 www.google.com"

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v5

    .line 14161
    invoke-virtual {v5}, Ljava/lang/Process;->waitFor()I

    move-result v5

    if-nez v5, :cond_1

    .line 14163
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    return-void

    .line 14165
    :cond_1
    new-array v0, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    .line 14168
    :catch_1
    :try_start_3
    iput-object v2, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    return-void

    :catch_2
    const-string v0, "Fail: InterruptedException"

    .line 14171
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    return-void
.end method

.method private t()Z
    .locals 3

    .line 1456
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    if-eqz v2, :cond_0

    .line 1457
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->i(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1458
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/e;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v1
.end method

.method static synthetic u(Lcom/android/settings/RadioInfo;)V
    .locals 3

    const/4 v0, 0x0

    .line 14182
    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 14183
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 14184
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    const-string v0, "Pass"

    .line 14185
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    goto :goto_0

    .line 14187
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Fail: Code: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v1, :cond_1

    .line 14193
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-object v0, v1

    goto :goto_1

    :catchall_1
    move-exception p0

    move-object v1, v0

    goto :goto_2

    :catch_1
    :goto_1
    :try_start_2
    const-string v1, "Fail: IOException"

    .line 14190
    iput-object v1, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v0, :cond_1

    .line 14193
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    return-void

    :goto_2
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 14195
    :cond_2
    throw p0
.end method

.method private u()Z
    .locals 4

    .line 1483
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    const-string v1, "RadioInfo"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1485
    :try_start_0
    invoke-virtual {v0}, Lcom/android/ims/e;->s()Lcom/android/ims/ImsConfig;

    move-result-object v0

    const/16 v3, 0x19

    .line 1488
    invoke-virtual {v0, v3}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v2, v3

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "isFeatureProvisioned() exception:"

    .line 1492
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1496
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v3, "isFeatureProvisioned() featureId=25 provisioned="

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method static synthetic v(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method private v()V
    .locals 5

    .line 1515
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1519
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateImsProvisionedState isImsVolteProvisioned()="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->r()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RadioInfo"

    .line 10176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1523
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1524
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->c:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1525
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1526
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/e;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    .line 1525
    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1528
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1529
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->s()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1530
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->d:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1531
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1532
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/e;->g(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v3

    goto :goto_1

    :cond_2
    move v2, v4

    .line 1531
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1534
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1535
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->t()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1536
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->e:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1537
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    sget-boolean v2, Landroid/os/Build;->IS_USER:Z

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1538
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/e;->i(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_2

    :cond_3
    move v2, v4

    .line 1537
    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1540
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1541
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    .line 10471
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->u()Z

    move-result v1

    .line 1541
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1542
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->f:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1543
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    sget-boolean v1, Landroid/os/Build;->IS_USER:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 1544
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    move v3, v4

    .line 1543
    :goto_3
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    return-void
.end method

.method static synthetic w(Lcom/android/settings/RadioInfo;)Lcom/android/ims/e;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    return-object p0
.end method

.method private w()Z
    .locals 2

    .line 1707
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "com.android.internal.R.bool.config_cbrs_supported"

    .line 1708
    invoke-static {v1}, Lcom/coloros/settings/d/a;->b(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 1707
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method private x()V
    .locals 2

    .line 1759
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->switchMultiSimConfig(I)V

    return-void
.end method

.method static synthetic x(Lcom/android/settings/RadioInfo;)Z
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->p()Z

    move-result p0

    return p0
.end method

.method static synthetic y(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->h()V

    return-void
.end method

.method static synthetic z(Lcom/android/settings/RadioInfo;)V
    .locals 2

    .line 14229
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f12117f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    .line 14230
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    .line 14231
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    .line 14233
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14234
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14235
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14237
    new-instance v0, Lcom/android/settings/RadioInfo$28;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$28;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 14245
    new-instance v1, Lcom/android/settings/RadioInfo$29;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$29;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 14252
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 14254
    new-instance v1, Lcom/android/settings/RadioInfo$30;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$30;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 14261
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method final a(IZ)V
    .locals 1

    .line 1402
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    if-eqz v0, :cond_0

    .line 1403
    new-instance v0, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;IZ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    :cond_0
    return-void
.end method

.method final a()Z
    .locals 3

    .line 1725
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 1726
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isOpportunisticNetworkEnabled()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1728
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "getCbrsDataState() state:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    const-string v2, "on"

    goto :goto_1

    :cond_1
    const-string v2, "off"

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RadioInfo"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 431
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 432
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    const-string v1, "RadioInfo"

    if-nez v0, :cond_0

    const-string p1, "Not run from system user, don\'t do anything."

    .line 433
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->finish()V

    return-void

    :cond_0
    const v0, 0x7f0d0295

    .line 438
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    const-string v0, "Started onCreate"

    .line 2176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "phone"

    .line 442
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    const-string v0, "connectivity"

    .line 443
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ao:Landroid/net/ConnectivityManager;

    .line 444
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 447
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    .line 446
    invoke-static {v0, v1}, Lcom/android/ims/e;->a(Landroid/content/Context;I)Lcom/android/ims/e;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ap:Lcom/android/ims/e;

    .line 449
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    .line 2739
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 2740
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 2742
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Phone "

    invoke-virtual {v5, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    :cond_1
    sput-object v1, Lcom/android/settings/RadioInfo;->t:[Ljava/lang/String;

    const v0, 0x7f0a031e

    .line 451
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->w:Landroid/widget/TextView;

    const v0, 0x7f0a0477

    .line 452
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->x:Landroid/widget/TextView;

    const v0, 0x7f0a0665

    .line 453
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->y:Landroid/widget/TextView;

    const v0, 0x7f0a01d0

    .line 454
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->z:Landroid/widget/TextView;

    const v0, 0x7f0a032a

    .line 455
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->A:Landroid/widget/TextView;

    const v0, 0x7f0a0114

    .line 456
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->B:Landroid/widget/TextView;

    const v0, 0x7f0a0488

    .line 457
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->C:Landroid/widget/TextView;

    const v0, 0x7f0a0583

    .line 458
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->D:Landroid/widget/TextView;

    const v0, 0x7f0a02de

    .line 459
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->E:Landroid/widget/TextView;

    const v0, 0x7f0a02d4

    .line 460
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->F:Landroid/widget/TextView;

    const v0, 0x7f0a078d

    .line 461
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->G:Landroid/widget/TextView;

    const v0, 0x7f0a01c4

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->H:Landroid/widget/TextView;

    const v0, 0x7f0a01cf

    .line 463
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->I:Landroid/widget/TextView;

    const v0, 0x7f0a0441

    .line 464
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->J:Landroid/widget/TextView;

    const v0, 0x7f0a0132

    .line 465
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->K:Landroid/widget/TextView;

    const v0, 0x7f0a03bb

    .line 466
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->L:Landroid/widget/TextView;

    const v0, 0x7f0a012c

    .line 467
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->M:Landroid/widget/TextView;

    .line 468
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->M:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    const v0, 0x7f0a05e7

    .line 470
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->N:Landroid/widget/TextView;

    const v0, 0x7f0a0546

    .line 471
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->O:Landroid/widget/TextView;

    const v0, 0x7f0a0626

    .line 472
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->W:Landroid/widget/EditText;

    const v0, 0x7f0a0213

    .line 473
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->T:Landroid/widget/TextView;

    const v0, 0x7f0a04df

    .line 474
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->P:Landroid/widget/TextView;

    const v0, 0x7f0a04e0

    .line 475
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->Q:Landroid/widget/TextView;

    const v0, 0x7f0a030c

    .line 476
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->R:Landroid/widget/TextView;

    const v0, 0x7f0a04da

    .line 478
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->S:Landroid/widget/TextView;

    const v0, 0x7f0a04fc

    .line 482
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coloros/settings/widget/ColorSpinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    .line 483
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->al:Lcom/coloros/settings/widget/ColorSpinner;

    sget-object v1, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/coloros/settings/widget/ColorSpinner;->setTitles([Ljava/lang/String;)V

    const v0, 0x7f0a04d7

    .line 492
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->am:Landroid/widget/Spinner;

    .line 493
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/android/settings/RadioInfo;->t:[Ljava/lang/String;

    const v3, 0x1090008

    invoke-direct {v0, p0, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    const v1, 0x1090009

    .line 495
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 496
    iget-object v4, p0, Lcom/android/settings/RadioInfo;->am:Landroid/widget/Spinner;

    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a012a

    .line 498
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->an:Landroid/widget/Spinner;

    .line 499
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v4, Lcom/android/settings/RadioInfo;->u:[Ljava/lang/String;

    invoke-direct {v0, p0, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 501
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 502
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->an:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    const v0, 0x7f0a0790

    .line 504
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    const v0, 0x7f0a079a

    .line 505
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    const v0, 0x7f0a07a1

    .line 506
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    const v0, 0x7f0a0231

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    .line 511
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/coloros/settings/utils/bh;->a(Landroid/content/Context;)Z

    move-result v0

    const/16 v1, 0x8

    if-nez v0, :cond_2

    .line 513
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->af:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 514
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ag:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 515
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ah:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 516
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ai:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0a0128

    .line 519
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aj:Landroid/widget/Switch;

    .line 520
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aj:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->w()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v2

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/Switch;->setVisibility(I)V

    const v0, 0x7f0a022b

    .line 522
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    .line 2750
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimSupported()I

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    move v0, v2

    :goto_2
    if-eqz v0, :cond_7

    const-string v0, "ro.boot.hardware.dsds"

    .line 2766
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2767
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_5

    move v0, v3

    goto :goto_3

    :cond_5
    move v0, v2

    :goto_3
    if-nez v0, :cond_7

    .line 524
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    new-instance v1, Lcom/android/settings/-$$Lambda$RadioInfo$WebEYTVHi55KXt30Q284AeHPTz4;

    invoke-direct {v1, p0}, Lcom/android/settings/-$$Lambda$RadioInfo$WebEYTVHi55KXt30Q284AeHPTz4;-><init>(Lcom/android/settings/RadioInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 534
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    .line 3755
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v3, :cond_6

    move v1, v3

    goto :goto_4

    :cond_6
    move v1, v2

    .line 534
    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto :goto_5

    .line 536
    :cond_7
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ak:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    :goto_5
    const v0, 0x7f0a0540

    .line 539
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->X:Landroid/widget/Switch;

    const v0, 0x7f0a0210

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->U:Landroid/widget/TextView;

    const v0, 0x7f0a0753

    .line 542
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->V:Landroid/widget/TextView;

    .line 543
    invoke-direct {p0, v2, v2}, Lcom/android/settings/RadioInfo;->a(II)V

    const v0, 0x7f0a04e1

    .line 545
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->Z:Landroid/widget/Button;

    .line 546
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->Z:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->i:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a075f

    .line 547
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->aa:Landroid/widget/Button;

    .line 548
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aa:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->j:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a054f

    .line 549
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ab:Landroid/widget/Button;

    .line 550
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ab:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->k:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0214

    .line 551
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->Y:Landroid/widget/Button;

    .line 552
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->Y:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->g:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0127

    .line 553
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ad:Landroid/widget/Button;

    .line 554
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ad:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->l:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0722

    .line 555
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ae:Landroid/widget/Button;

    .line 556
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ae:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->m:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a047a

    .line 559
    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->ac:Landroid/widget/Button;

    .line 560
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ac:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->h:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 561
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 562
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 564
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_8

    .line 565
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ac:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 568
    :cond_8
    iput v2, p0, Lcom/android/settings/RadioInfo;->az:I

    .line 569
    sget-object v0, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/settings/RadioInfo;->ay:I

    .line 570
    iput v2, p0, Lcom/android/settings/RadioInfo;->aA:I

    .line 573
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aE:Landroid/os/Handler;

    const/16 v4, 0x3e8

    .line 574
    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 573
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    if-eqz p1, :cond_9

    const-string v0, ""

    const-string v1, "mPingHostnameResultV4"

    .line 4662
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV6"

    .line 4663
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    const-string v1, "mHttpClientTestResult"

    .line 4664
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    .line 4666
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->P:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4667
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->Q:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4668
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->R:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4670
    sget-object v0, Lcom/android/settings/RadioInfo;->s:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v3

    const-string v1, "mPreferredNetworkTypeResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->ay:I

    const-string v0, "mSelectedPhoneIndex"

    .line 4673
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->aA:I

    const-string v0, "mCellInfoRefreshRateIndex"

    .line 4675
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/RadioInfo;->az:I

    :cond_9
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    const/4 v0, 0x0

    const v1, 0x7f121181

    .line 692
    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aJ:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 693
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    const/16 v2, 0x62

    .line 694
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    const/4 v1, 0x1

    const v2, 0x7f121173

    .line 695
    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->aF:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 696
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x2

    const v3, 0x7f121174

    .line 697
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->aG:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 698
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    const/4 v2, 0x3

    const v3, 0x7f121175

    .line 699
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->aH:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 700
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 703
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->aq:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/coloros/settings/utils/bh;->a(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    const v3, 0x7f121172

    .line 705
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->aI:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 706
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    :cond_0
    const/4 v2, 0x5

    const v3, 0x7f121187

    .line 708
    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->aK:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 709
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 647
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "onPause: unregister phone & data intents"

    const-string v1, "RadioInfo"

    .line 6176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aD:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 652
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 653
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ao:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->aC:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    const/4 v0, 0x5

    .line 716
    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 717
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->a:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const v0, 0x7f121187

    .line 723
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    :cond_1
    const v0, 0x7f121188

    .line 726
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_0
    move v0, v1

    .line 732
    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    return v1
.end method

.method protected onResume()V
    .locals 2

    .line 581
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    const-string v0, "Started onResume"

    const-string v1, "RadioInfo"

    .line 5176
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 585
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->e()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 680
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->ar:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV4"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->as:Ljava/lang/String;

    const-string v1, "mPingHostnameResultV6"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->at:Ljava/lang/String;

    const-string v1, "mHttpClientTestResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    iget v0, p0, Lcom/android/settings/RadioInfo;->ay:I

    const-string v1, "mPreferredNetworkTypeResult"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 685
    iget v0, p0, Lcom/android/settings/RadioInfo;->aA:I

    const-string v1, "mSelectedPhoneIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 686
    iget v0, p0, Lcom/android/settings/RadioInfo;->az:I

    const-string v1, "mCellInfoRefreshRateIndex"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
