.class public Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;
.super Ljava/lang/Object;
.source "LunarHelper.java"


# static fields
.field private static final MAX_MONTHS:I = 0xc

.field private static final TAG:Ljava/lang/String; = "LunarHelper"

.field private static sLunarHelper:Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;


# instance fields
.field private mAnimals:[Ljava/lang/String;

.field private mChineseDayTable:[Ljava/lang/String;

.field private mChineseMonthTable:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mGan:[Ljava/lang/String;

.field private mLeapMonth:[Ljava/lang/String;

.field private mZhi:[Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mContext:Landroid/content/Context;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030005

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    const v0, 0x7f030002

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mAnimals:[Ljava/lang/String;

    const v0, 0x7f030007

    .line 53
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mGan:[Ljava/lang/String;

    const v0, 0x7f030004

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mZhi:[Ljava/lang/String;

    const v0, 0x7f030006

    .line 55
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    const v0, 0x7f030003

    .line 56
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mChineseDayTable:[Ljava/lang/String;

    return-void
.end method

.method public static adjustLunarMonth(II)I
    .locals 1

    if-lez p1, :cond_1

    const/16 v0, 0xd

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    if-ne v0, p0, :cond_0

    add-int/lit8 p0, p1, 0xc

    goto :goto_0

    :cond_0
    if-le p0, v0, :cond_1

    add-int/lit8 p0, p0, -0x1

    :cond_1
    :goto_0
    return p0
.end method

.method private getAnimalsYear(I)Ljava/lang/String;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mAnimals:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x4

    rem-int/lit8 p1, p1, 0xc

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getChineseLunarDayString(I)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mChineseDayTable:[Ljava/lang/String;

    add-int/lit8 p1, p1, -0x1

    aget-object p0, p0, p1

    return-object p0
.end method

.method private getChineseLunarMonthString(I)Ljava/lang/String;
    .locals 2

    const/16 v0, 0xc

    if-le p1, v0, :cond_0

    add-int/lit8 p1, p1, -0xc

    .line 122
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mChineseMonthTable:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    const/4 p1, 0x1

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getCyclical(I)Ljava/lang/String;
    .locals 3

    add-int/lit16 p1, p1, -0x76c

    add-int/lit8 p1, p1, 0x24

    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mGan:[Ljava/lang/String;

    rem-int/lit8 v2, p1, 0xa

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mZhi:[Ljava/lang/String;

    rem-int/lit8 p1, p1, 0xc

    aget-object p0, p0, p1

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;
    .locals 1

    .line 42
    sget-object v0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->sLunarHelper:Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    if-nez v0, :cond_0

    .line 43
    new-instance v0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    invoke-direct {v0, p0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->sLunarHelper:Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    .line 45
    :cond_0
    sget-object p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->sLunarHelper:Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;

    return-object p0
.end method

.method private getLeapLunarMonthString(II)Ljava/lang/String;
    .locals 2

    if-lez p2, :cond_0

    const/16 v0, 0xd

    if-ge p2, v0, :cond_0

    add-int/lit8 v0, p1, -0xc

    if-ne v0, p2, :cond_0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mLeapMonth:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 130
    :cond_0
    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getChineseLunarMonthString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getLunarDate(III)Ljava/lang/String;
    .locals 5

    const-string v0, "LunarHelper"

    const-string v1, "Aod"

    const/4 v2, 0x3

    .line 60
    new-array v2, v2, [I

    const/4 v3, 0x0

    .line 63
    :try_start_0
    invoke-static {p1, p2, p3}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->SunDateToChineseDate(III)[I

    move-result-object v2

    .line 64
    aget p1, v2, v3

    invoke-static {p1}, Lcom/oppo/util/OppoChineseDateAndSolarDate;->GetChLeapMonth(I)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "LunarHelper#getLunarDate get an exception"

    .line 66
    invoke-static {v1, v0, p2, p1}, Lcom/coloros/common/util/LogUtil;->trace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move p1, v3

    :goto_0
    const/4 p2, 0x1

    .line 68
    aget p3, v2, p2

    invoke-static {p3, p1}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->adjustLunarMonth(II)I

    move-result p3

    aput p3, v2, p2

    .line 69
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    aget v4, v2, v3

    invoke-direct {p0, v4}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getCyclical(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v2, v3

    invoke-direct {p0, v3}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getAnimalsYear(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget p2, v2, p2

    .line 71
    invoke-direct {p0, p2, p1}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getLeapLunarMonthString(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x2

    aget p1, v2, p1

    invoke-direct {p0, p1}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getChineseLunarDayString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "lunar Data :"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, v0, p0}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDateToString(J)Ljava/lang/String;
    .locals 4

    .line 77
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 78
    new-instance p1, Ljava/text/SimpleDateFormat;

    iget-object p2, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f11012a

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 79
    new-instance p2, Ljava/text/SimpleDateFormat;

    iget-object v1, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f110129

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 80
    new-instance v1, Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f110128

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 82
    invoke-virtual {p2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 83
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "year :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " month :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " day :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Aod"

    const-string v3, "LunarHelper"

    invoke-static {v2, v3, v1}, Lcom/coloros/common/util/LogUtil;->normal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    invoke-direct {p0, p1, p2, v0}, Lcom/coloros/systemui/aod/aodclock/helper/LunarHelper;->getLunarDate(III)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
