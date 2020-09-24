.class public Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;
.super Ljava/lang/Object;
.source "ColorSignalIcons.java"


# static fields
.field public static final CARD_TYPE_CM:I = 0x2

.field public static final CARD_TYPE_CT:I = 0x1

.field public static final CARD_TYPE_CU:I = 0x3

.field private static final DATA_TYPE_2G:I = 0x2

.field private static final DATA_TYPE_3G:I = 0x3

.field private static final DATA_TYPE_3G_PLUS:I = 0x4

.field public static final DATA_TYPE_4G:I = 0x7

.field public static final DATA_TYPE_4G_PLUS:I = 0x8

.field public static final DATA_TYPE_4_5G:I = 0x9

.field private static final DATA_TYPE_5G:I = 0xc

.field private static final DATA_TYPE_E:I = 0x1

.field private static final DATA_TYPE_G:I = 0x0

.field private static final DATA_TYPE_H:I = 0x5

.field private static final DATA_TYPE_H_PLUS:I = 0x6

.field public static final DATA_TYPE_LTE:I = 0xa

.field public static final DATA_TYPE_LTE_PLUS:I = 0xb

.field public static final NETWORK_TYPE_5G:I = 0x64

.field public static final NETWORK_TYPE_LTE_CA_5GE:I = 0x15

.field private static final OPPO_DATA_ACTIVITY_DIRECTION:[I

.field protected static final OPPO_DATA_ACTIVITY_DIRECTION_SOFT:[I

.field private static final OPPO_DATA_TYPE:[I

.field protected static final OPPO_DATA_TYPE_SOFT:[I

.field private static final OPPO_SIGNAL_STRENGTH:[I

.field private static final OPPO_SIGNAL_STRENGTH_SOFT:[I

.field private static final OPPO_VOLTE_ICON:[I

.field private static final OPPO_VOLTE_ICON_EX:[I

.field private static final OPPO_VOWIFI_ICON:[I

.field public static final OPPO_WIFI_SIGNAL_STRENGTH:[[I

.field public static final SIM1:I = 0x0

.field public static final SIM2:I = 0x1

.field public static final TAG:Ljava/lang/String; = "ColorSignalIcons"

.field public static final VOLTE:I = 0x0

.field public static final VOLTE1:I = 0x1

.field public static final VOLTE2:I = 0x2

.field public static final VOLTE_BOTH:I = 0x3

.field public static final VOWIFI:I = 0x0

.field public static final VOWIFI1:I = 0x1

.field public static final VOWIFI2:I = 0x2

.field public static final VOWIFI_BOTH:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x2

    .line 67
    new-array v0, v0, [[I

    const/4 v1, 0x5

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_WIFI_SIGNAL_STRENGTH:[[I

    const/16 v0, 0xd

    .line 81
    new-array v2, v0, [I

    fill-array-data v2, :array_2

    sput-object v2, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_TYPE_SOFT:[I

    .line 98
    new-array v2, v1, [I

    fill-array-data v2, :array_3

    sput-object v2, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_SOFT:[I

    .line 116
    new-array v0, v0, [I

    fill-array-data v0, :array_4

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_TYPE:[I

    .line 133
    new-array v0, v1, [I

    fill-array-data v0, :array_5

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_SIGNAL_STRENGTH:[I

    .line 143
    new-array v0, v1, [I

    fill-array-data v0, :array_6

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_SIGNAL_STRENGTH_SOFT:[I

    .line 152
    new-array v0, v1, [I

    fill-array-data v0, :array_7

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION:[I

    const/4 v0, 0x4

    .line 160
    new-array v1, v0, [I

    fill-array-data v1, :array_8

    sput-object v1, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOLTE_ICON:[I

    .line 165
    new-array v1, v0, [I

    fill-array-data v1, :array_9

    sput-object v1, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOLTE_ICON_EX:[I

    .line 170
    new-array v0, v0, [I

    fill-array-data v0, :array_a

    sput-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOWIFI_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080f38
        0x7f080f39
        0x7f080f3a
        0x7f080f3b
        0x7f080f3c
    .end array-data

    :array_1
    .array-data 4
        0x7f080f38
        0x7f080f39
        0x7f080f3a
        0x7f080f3b
        0x7f080f3c
    .end array-data

    :array_2
    .array-data 4
        0x7f080f0b
        0x7f080f0a
        0x7f080f04
        0x7f080f05
        0x7f080f06
        0x7f080f0c
        0x7f080f0d
        0x7f080f07
        0x7f080f08
        0x7f080f07
        0x7f080f0e
        0x7f080f0f
        0x7f080f09
    .end array-data

    :array_3
    .array-data 4
        0x7f080eec
        0x7f080eed
        0x7f080eef
        0x7f080eee
        0x7f080eec
    .end array-data

    :array_4
    .array-data 4
        0x7f080eff
        0x7f080efe
        0x7f080ef6
        0x7f080ef7
        0x7f080ef8
        0x7f080f00
        0x7f080f01
        0x7f080efa
        0x7f080efb
        0x7f080ef9
        0x7f080f02
        0x7f080f03
        0x7f080efc
    .end array-data

    :array_5
    .array-data 4
        0x7f080f1e
        0x7f080f1f
        0x7f080f20
        0x7f080f21
        0x7f080f22
    .end array-data

    :array_6
    .array-data 4
        0x7f080f26
        0x7f080f27
        0x7f080f28
        0x7f080f29
        0x7f080f2a
    .end array-data

    :array_7
    .array-data 4
        0x7f080ee8
        0x7f080ee9
        0x7f080eeb
        0x7f080eea
        0x7f080ee8
    .end array-data

    :array_8
    .array-data 4
        0x7f080f2b
        0x7f080f30
        0x7f080f31
        0x7f080f32
    .end array-data

    :array_9
    .array-data 4
        0x7f080f2c
        0x7f080f2d
        0x7f080f2e
        0x7f080f2f
    .end array-data

    :array_a
    .array-data 4
        0x7f080f33
        0x7f080f35
        0x7f080f36
        0x7f080f34
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getNoHdIcon()I
    .locals 1

    const v0, 0x7f080f11

    return v0
.end method

.method public static getVolteIcon(I)I
    .locals 3

    .line 314
    invoke-static {}, Lcom/coloros/common/feature/FeatureOption;->isOppoVersionExp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-ltz p0, :cond_0

    .line 315
    sget-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOLTE_ICON_EX:[I

    array-length v2, v0

    if-ge p0, v2, :cond_0

    .line 316
    aget p0, v0, p0

    return p0

    :cond_0
    return v1

    :cond_1
    if-ltz p0, :cond_2

    .line 321
    sget-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOLTE_ICON:[I

    array-length v2, v0

    if-ge p0, v2, :cond_2

    .line 322
    aget p0, v0, p0

    return p0

    :cond_2
    return v1
.end method

.method public static getVowifiIcon(I)I
    .locals 2

    .line 330
    sget-object v0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_VOWIFI_ICON:[I

    array-length v1, v0

    if-ge p0, v1, :cond_1

    if-gez p0, :cond_0

    goto :goto_0

    .line 333
    :cond_0
    aget p0, v0, p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDataActivityDirection(Landroid/content/Context;II)I
    .locals 0

    .line 285
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-ltz p3, :cond_0

    .line 286
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION_SOFT:[I

    array-length p2, p0

    if-ge p3, p2, :cond_0

    .line 287
    aget p0, p0, p3

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p3, :cond_2

    .line 292
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_ACTIVITY_DIRECTION:[I

    array-length p2, p0

    if-ge p3, p2, :cond_2

    .line 293
    aget p0, p0, p3

    return p0

    :cond_2
    return p1
.end method

.method public getDataTypeIcon(Landroid/content/Context;II)I
    .locals 0

    .line 191
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-ltz p3, :cond_0

    .line 192
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_TYPE_SOFT:[I

    array-length p2, p0

    if-ge p3, p2, :cond_0

    .line 193
    aget p0, p0, p3

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p3, :cond_2

    .line 198
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_DATA_TYPE:[I

    array-length p2, p0

    if-ge p3, p2, :cond_2

    .line 199
    aget p0, p0, p3

    return p0

    :cond_2
    return p1
.end method

.method public getNoServiceIcon(Landroid/content/Context;I)I
    .locals 0

    .line 300
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080f24

    return p0

    :cond_0
    const p0, 0x7f080f1d

    return p0
.end method

.method public getOppoDataType(I)I
    .locals 3

    const/16 p0, 0x64

    const/4 v0, 0x3

    const/4 v1, 0x2

    if-eq p1, p0, :cond_5

    const/16 p0, 0x8b

    if-eq p1, p0, :cond_4

    const-string p0, "BOUYGUE"

    const-string v2, "Orange"

    packed-switch p1, :pswitch_data_0

    :cond_0
    move v0, v1

    goto :goto_2

    :pswitch_0
    const/4 v0, 0x6

    goto :goto_2

    :pswitch_1
    const/4 v0, 0x7

    goto :goto_2

    .line 235
    :pswitch_2
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 236
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x5

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x4

    :goto_1
    move v0, p0

    goto :goto_2

    :pswitch_3
    const/4 v0, 0x1

    goto :goto_2

    .line 219
    :pswitch_4
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 220
    invoke-static {}, Lcom/coloros/systemui/common/util/StatusBarUtils;->getOperator()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    :cond_3
    const/4 p0, 0x0

    goto :goto_1

    :cond_4
    :pswitch_5
    const/16 v0, 0x8

    goto :goto_2

    :cond_5
    :pswitch_6
    const/16 v0, 0xc

    :goto_2
    :pswitch_7
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_4
        :pswitch_7
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_7
        :pswitch_0
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method

.method public getRoamingIcon(Landroid/content/Context;I)I
    .locals 0

    .line 307
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f080f25

    return p0

    :cond_0
    const p0, 0x7f080ee3

    return p0
.end method

.method public getSignalStrength(Landroid/content/Context;II)I
    .locals 0

    .line 176
    invoke-static {p1, p2}, Lcom/coloros/systemui/common/util/NetworkServiceProxy;->isSoftSimCard(Landroid/content/Context;I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    if-ltz p3, :cond_0

    .line 177
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_SIGNAL_STRENGTH_SOFT:[I

    array-length p2, p0

    if-ge p3, p2, :cond_0

    .line 178
    aget p0, p0, p3

    return p0

    :cond_0
    return p1

    :cond_1
    if-ltz p3, :cond_2

    .line 183
    sget-object p0, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->OPPO_SIGNAL_STRENGTH:[I

    array-length p2, p0

    if-ge p3, p2, :cond_2

    .line 184
    aget p0, p0, p3

    return p0

    :cond_2
    return p1
.end method

.method public isFiveG(IZ)Z
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    .line 281
    invoke-virtual {p0, p1}, Lcom/coloros/systemui/statusbar/network/ColorSignalIcons;->getOppoDataType(I)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 p1, 0xc

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method
